pragma solidity ^0.6.0;

interface ICredentialRegistry {

    struct CredentialMetadata {
        bytes32 issuerDid;
        bytes32 subjectDid;
        string purpose;
        uint iat;
        uint exp;
        bool status;
    }

    function register(bytes32 credentialHash, bytes32 issuerDid, bytes32 subjectDid, string memory purpose, uint exp) external returns (bool);
    function revoke(bytes32 credentialHash) external returns (bool);
    function verify(bytes32 credentialHash, address issuer) external view returns (bool);

    event CredentialRegistered(bytes32 indexed credentialHash, address by, bytes32 id, uint iat);
    event CredentialRevoked(bytes32 indexed credentialHash, address by, uint256 date);
}