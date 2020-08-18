pragma solidity ^0.6.0;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "./ICredentialRegistry.sol";

contract CredentialRegistry is ICredentialRegistry, AccessControl {
  bytes32 public constant ISSUER_ROLE = keccak256("ISSUER_ROLE");

  mapping (bytes32 => mapping (address => CredentialMetadata)) credentials;

  constructor() public{
    _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  function register(bytes32 credentialHash, bytes32 issuerDid, bytes32 subjectDid, string memory purpose, uint exp) override onlyIssuer external returns(bool) {
    CredentialMetadata storage credential = credentials[credentialHash][msg.sender];
    require(credential.subjectDid==0,"Credential already exists");

    credential.issuerDid = issuerDid;
    credential.subjectDid = subjectDid;
    credential.iat = now*1000;
    credential.exp = exp;
    credential.purpose = purpose;
    credential.status = true;
    credentials[credentialHash][msg.sender] = credential;
    emit CredentialRegistered(credentialHash, msg.sender, subjectDid, credential.iat);
    return true;
  }

  function revoke(bytes32 credentialHash) override onlyIssuer external returns(bool) {
    CredentialMetadata storage credential = credentials[credentialHash][msg.sender];

    require(credential.subjectDid!=0, "credential hash doesn't exist");
    require(credential.status, "Credential is already revoked");  
     
    credential.status = false;  
    credentials[credentialHash][msg.sender] = credential;
    emit CredentialRevoked(credentialHash, msg.sender, now);
    return true;
  }
  
  function verify(bytes32 credentialHash, address issuer) override external view returns(bool isValid){
    CredentialMetadata memory credential = credentials[credentialHash][issuer];
    require(credential.subjectDid!=0,"Credential hash doesn't exist");
    return credential.status;
  }

  modifier onlyIssuer() {
    require(hasRole(ISSUER_ROLE, msg.sender), "Caller is not a issuer");
    _;
  }
}