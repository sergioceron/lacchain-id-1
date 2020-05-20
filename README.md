# LACChain ID

LACChain ID is the second layer of the blockchain-based infrastructure that the LACChain Alliance is making available for enterprise use of blockchain in Latin America and the Caribbean. This second layer complements the first layer of public-permissioned blockchain networks by enabling the authentication and identification of the entities (individuals, organizations, things and processes) using the infrastructure. Assigning proper identifiers, it allows, as a principal use, to establish the ownership of the digital assets and settle legal accountabilities and responsibilities. The identity layer of LACChain is also essential for the third layer: Tokenized Fiat Money. It would not be possible to tokenize and transfer digital money in compliance with regulations without an identity layer allowing KYC and AML processes.

IMAGE

The partners collaborating with IDB Lab, the entity leading the LACChain Alliance, in the LACChain ID layer are Everis, Grupo Sabra, Idemia, IECISA, Latam Link, Multiledgers, RSK/IOVLabs, uPort, and World Data. The main goals of this working group are: 

*	A published report covering the state of the art of the technology, relevant regulations, and the trust frameworks related to self-sovereign identity (SSI).
*	The elaboration of the LACChain ID techno-legal framework for self-sovereign identity using blockchain.
*	The collaboration between different digital wallets to use the same standards and protocols and achieve interoperability between identifiers and credentials over LACChain Networks.
*	The promotion and support of a series of public and private initiatives in Latin America and the Caribbean that incorporate blockchain-based self-sovereign identity.

## The LACChain ID techno-legal framework (work in progress)

Regulation is the first layer of any identity model, including digital identity based in a self-sovereign identity (SSI) model. In the SSI model there are several new technological elements that are not properly addressed by current regulations. For instance, some countries have not regulated the use of electronic signatures, and a higher number of countries do not have modern data protection regulations. 

The SSI model requires new technological components, standards, and protocols. At present, these three elements are under development, at different levels of maturity. We classify the technological components into seven categories:  Decentralized identifiers (DIDs); verifiable credentials (VCs); verifiable presentations (VPs); authentication, authorization, and identification; digital wallets; certificate authorities (CAs) and trust lists (TLs); and decentralized ledgers (DLTs). 

A SSI model’s operation requires a “trust framework”.  According to the Open Identity Exchange (OIX) a trust framework is a is a “generic term often used to describe a legally enforceable set of specifications, rules, and agreements that govern a multi-party system established for a common purpose, designed for conducting specific types of transactions among a community of participants, and bound by a common set of requirements. […] They are referred to as operating regulations, scheme rules, or operating policies in contexts different from digital identity”. In a digital identity ecosystem, whether it is self-sovereign or not, a trust framework defines the governance model, the certificate authorities, the identity providers, the levels of assurance, and the communication channels, among others, allowing to establish root of trust, trust lists, revocation lists among other necessary trust elements.

## 1. Regulation

LACChain is developing all the technological solutions in alignment with the regulation of those countries where these solutions are being implemented. LACChain also ensures that data privacy and protection are compliant with the strictest standards of every country.

## 2. Technology

## 2.1 Decentralized identifiers (DIDs)

DIDs shall be encompassed by DID documents that allow their resolution. DID documents shall have the following elements:

*	A Uniform Resource Identifier (URI) to uniquely identify terminology and protocols that allows parties to read the DID document 
*	A DID that identifies the subject of the DID document 
*	A set of authenticators (i.e. public keys) used for authentication, authorization, and communication mechanisms, associated to the authentication methods
*	A set of authentication methods used for the DID subject to prove ownership of the DID to another entity
*	A set of authorization and delegation methods for allowing other entities to operate on behalf of the DID subject (i.e. holders different from the subject).
*	A set of service endpoints to describe where and how to interact with the DID subject
*	A timestamp for when the document was created
*	A timestamp for when the document was last updated
*	Cryptographic proof of identity (e.g. digital signature)

LACChain promotes DID methods that:

*	Are scalable
*	Guarantee privacy and pseudonymity 
*	Register the DIDs in a smart contract with a well-defined governance
*	Do not allow to use the same public key as a DID and as an authentication method (if applicable)
*	Destroy the seed of the DID so it cannot be re-generated by a hacker in case of theft
*	Do not disclose any personal data or information in the DID documents
*	Stores the DID documents in the blockchain, so they can be easily found by issuers or verifiers that require to resolve a specific DID
*	Use quantum-safe cryptography for the authentication methods
*	Allow responsible use of biometrics (by the wallets and applications use to operate these DIDs)

LACChain is committed to maintain a DID registry and resolver, similar to the [DIF´s](https://uniresolver.io/) of those DID methods deployed on the LACChain Blockchain Networks that meet the LACChain ID requirements.

## 2.2. Verifiable credentials (VCs)

### 2.2.1. Format

Verifiable credentials shall have the following elements:

*	URI to uniquely identify the credential and/or the subject of the credential (e.g. DIDs)
*	URI to identify the issuer (e.g. a DID)
*	URI to identify the credential type 
*	URI to identify terminology and protocols that allow parties to read the credential 
*	Cryptographic proof of the issuer 
*	Claims data or metadata to access it 
*	Issuance date
*	Expiration conditions 
*	Location of the credential status (e.g. a smart contract in a blockchain network)

The LACChain Alliance is working on different verifiable credentials for various use cases that will propose and promote as an international opensource resource. Examples currently under implementation include digital diplomas, corporate credentials, property titles, housing certificates, and client registries among others. LACChain actively promotes verifiable credentials that satisfy the following conditions:

*	The DID of the subject and the issuer can be found and resolved from the blockchain 
*	Claims data or metadata from the credential are never registered in the blockchain
*	Expiration conditions can be automatically checked from the credential
*	Credential status can be verified against a smart contract living in the blockchain, and nobody but the issuer shall be able to change it. This eliminates the need of external and/or centralized CRL or OCSP

The preferred format for verifiable credentials is JSON-LD. 

### 2.2.2. Revocation

Clear revocation rules shall be defined for each credential so it is clear who and under which conditions can change the status. Some examples are:

*	Status is automatically set as active when the credential is issued by the issuer.
*	Issuers can change the status to revoked when the subject ceases meeting the claims attested in the credential.
*	Issuers can change the status to suspended when the subject reports that the credential or the authenticators or proofs associated have been compromised.
*	Issuers can change the status to revoked when the user reports that they do not want to use the credential anymore.
*	Subject or holder can change the status to suspended when the credential or their keys have been compromised.
*	Subject or holder can change the status to revoked when they no longer want to use the credential.
*	The status of the credential is automatically changed after the expiration date.

### 2.2.3. Storage

Repositories for verifiable credentials are typically digital wallets that also allow to generate verifiable presentations and share them with others. In the off-chain model encouraged by LACChain, credentials are stored in and protected by the software or hardware chosen by the user. The use of mobile apps such as digital wallets is seen as the most reasonable option in terms of security and convenience.

### 2.2.4. Exchange

There are at least three types of exchange of credentials. 
Issuance: The credential is sent from an issuer to the requester, holder, or subject.
Delegation/Transference: The credential is exchanged between requester, holder, and subject.
Presentation: The credential is sent from a holder to a verifier.
For all the types of exchanges of credentials, the channels between the repository where the credential is stored (i.e. the digital wallet) and the service that generates or consumes the credential must be secure and protected. 

It should be possible to do anonymous peer-to-peer and anonymous presentation of credentials. 

A use case currently under development in the context of the COVID-19 pandemic is to exchange verifiable credentials to prove someone that you were in contact with in case  you become aware that you are COVID-19 positive without disclosing who you are or when was the contact. 

## 2.3. Verifiable presentations (VPs)

### 2.3.1. Format

Verifiable presentations shall include:

*	URI to uniquely identify the presentation 
*	URI to uniquely identify the type of the object 
*	One or more verifiable credentials or claims derived from them 
*	URI to identify the entity generating the presentation (e.g. DID)
*	Cryptographic proof of the subject (e.g. digital signature)

Verifiable presentations may also include:

*	Information about a targeted audience or verifier that the credential was issued for

The preferred format for verifiable presentations is JSON-LD.

#### 2.3.2. Verification process

LACChain ID introduces the LACChain ID Verification Process. It consists of the following steps:

**Step 1: Verification of the digital wallet:** Holders store credentials in digital wallets that are also instrumental to manage and present those credentials. Therefore, when a credential is presented to a verifier, in general there will be a connection between the digital wallet and the digital service of the verifier (i.e. an https connection). Therefore, the verifier needs to trust not only the verifiable information from the credential, that will be verified through steps 2 to 6, but also the service that is presenting it (the wallet). Wallets are a fundamental pillar of the SSI framework, so they need to incorporate different security measures and protocols to protect the owners from unauthorized accesses, and enable key recovery. Thus, some wallets will be certified by the authorities according to their level of security and reliability, and service providers will decide which ones they trust.

**Step 2. Verification of the validity of the credential (or validation):** The verifier verifies that the structure, the format, and the context are correct. All this information is contained in the credential and can be automatically verified by a verification service. Standardization of structure, format, and context will enable worldwide recognition, which will be fundamental  for uses such as digital passports, digital diplomas, or digital property titles.

**Step 3. Verification of the status of the credential:** The verifier verifies that the credential has an active status. LACChain encourages the use of smart contracts maintained by the issuers of credentials for CRLs. In this case, credentials would contain a field that indicates the address of the smart contract where the ID of the credential is associated to a dynamic status. Only when the status is active, the Step 2 of the verification shall be considered successful.  

**Step 4. Verification of the issuer:** The verifier verifies the identity (i.e. the digital signature) of the issuer, and the chain of trust behind their identity, if applicable. To trust the issuer, the verifier will need to know their real identity (i.e. a Verifiable ID). In principle, the credential presented by the holder only contains the DID and digital signature of the issuer, but not additional information about their identity. That digital signature might be unknown for or untrusted by the verifier. In that case, in order to verify the issuer’s real identity, it must be possible for the verifier to know how to access the root of trust behind it. That requires roots of trust that end in a root certificate authority (CA) that is trusted by the verifier.

**Step 5. Verification of the presenter:** The verifier verifies that the presenter is authorized to present that credential, either because it is the subject or because has been authorized to it. In the first case, the presenter will be able to prove that they are in control of the DID, by solving a challenge to one of the authentication methods. In the second case, either the presenter can also solve challenges to some of the authentication methods of the DID, or in the verifiable credential the legitimate owner has indicated that a different subject (the presenter) is authorized to present it. 

**Step 6. Verification of the claims:** If all the previous steps are successful, the verifier finally gets the information claimed in the verifiable credential and trusts it.

### 2.3.3. Traceability and monitoring

When the off-chain storage of credentials recommended in Section 6.2.3. is adopted:

*	The exchange of credentials also happens off-chain, so it does not leave any track in the registry.

*	The verification of credentials queries the registry but without generating transactions so there is no traceability either.

This helps meeting data privacy requirements. However, it might be the case that the exchange and verification of the credentials is intended to be known as for measuring impact and providing feedback to the solution. In this case:

*	Scalable approaches in terms to register transactions in the ledger when the credentials are presented and verified should be designed for each solution. 

*	Data privacy shall be preserved, including the PII that can be derived from exchanges and verifications. Only quantitative data shall be registered in the ledger and aggregated data shall be collected.

## 2.4. Digital repositories and wallets

A digital wallet shall:

*	Provide a secure access to the entity (its holders), by guaranteeing that non-authorized entities can access it.
*	Provide a secure access to the entity (its holders), by guaranteeing that non-authorized entities can access it.
*	Ensure security and strong data encryption.
*	Provide recovery of keys and credentials.
*	Be connected to the registries where the DID registries, the trust lists, and the cryptographic proofs of the DID documents and credentials are stored.
*	Provide mechanisms for a user to change or require the issuer to change the status of their credentials.
*	Provide mechanisms for the owner to erase all the data associated to them.

A digital wallet may:

*	Keep transactional information about the entities, if authorized to do so.
*	Provide dashboards of activity.
*	Provide mechanisms for reducing PII of the entities activities by combining the use of different DIDs for different interactions.

Mobile and cloud wallets are the most portable options.

## 2.5. Decentralized ledgers

For SSI to be secure and scalable it is essential in the LACChain ID framework to rely on decentralized ledgers to store the cryptographic proofs of the DIDs, the cryptographic proofs and status of the verifiable credentials and presentations, the public keys of the certificate authorities, and the trust lists, among others. Blockchain networks are a specific type of decentralized ledgers characterized for having smart contracts to automate processes and represent digital assets, having consensus protocols to generate new blocks, and having all the nodes maintaining the same copy of the information. Blockchain networks over other types of decentralized ledgers are more suitable for self-sovereign identity because they allow to use blockchain addresses as DIDs, smart contracts for trust lists, and there are no different versions or siloes of information between different entities in the network.
According to the International Standards Organization (ISO), there are three types of blockchain networks: permissionless, permissioned-public, and permissioned-private. The self-sovereign identity model can leverage different types of blockchain networks, and even other distributed ledgers. However, LACChain considers that permissioned public networks are the most suitable for ensuring scalability and compliance with regulation of the use cases currently under implementation with public and private entities throughout the region .

# 3. Trust frameworks

## 3.1. Governance

LACChain introduces the LACChain ID governance model, that distinguishes different governance layers of an SSI ecosystem. We understand that there are, at least, five different layers with independent governance: the decentralized ledger, the block generation, the DID registry, the trusted lists, and the management of keys and credentials. When the ecosystem is government-based, the government will be very likely responsible for all or most of the layers. 

### 3.1.1. Governance of the network

Based on ISO/UN terms and definitions, “DLT & blockchain systems governance is an approach that comprises elements of central and decentral decision rights, where the accountability is situated within the network and where incentives are provided to reach consensus”. The main objective of the DLT governance is the management of the system lifecycle management and “the DLT & blockchain systems governance lifecycle view addresses both the risks inherent to and the interests of DLT participants and broader stakeholders during the establishment, operation, and termination of the DLT system”.

The conditions under which a user is given access to the LACChain’s system is based on the acceptance of LACChain’s terms of use to be enforced for all the period of usage. These access rules are entirely determined by the LACChain Alliance. In this DLT system it is not possible to become a validating node or even writer of the system without prior consent of the group of organizations who conform the LACChain Alliance. All parties behind the system are known, identifiable and organizations behind this permissioned system and LACChain is currently forming  an adequate corporate structure (L-Net) as the Underlaying Orquestration Company, formally distributed and no controlled by any singular organization, to manage the full lifecycle of the network.

As ISO/UN describes, “the governance of a DLT & blockchain systems oversees several key functions during the operational stage of the DLT & blockchain system, such as the enrolment of participatory rights for participants in the DLT & blockchain system and the contracting rules associated with participation in the DLT & blockchain system. All DLT & blockchain systems shall operate within the broader context of external legal and regulatory frameworks; in some case DLT & blockchain systems may provide guidance and on-chain mechanisms for managing the operation”. 

Some of the main activities providing by LACChain’s coordination bodies are:

**Maintenance of the network:** Guaranteeing that the network runs without issues. In a blockchain network, issues as insufficient amount of validator nodes or a number of no responsive validator being over a certain threshold will interrupt the generation of new blocks. Maintenance for us means guaranteeing that the network will not fail, collapse, or die. 

**Technical support:** Helping in case something fails in the deployment or performance of nodes or applications on top of the network.

**Upgrades:** Proactive research and developments in the network to improve performance and interoperability, among others.

**Permissioning:** Allowing nodes and accounts to join the network (whitelisting) and removing them (blacklisting) when they violate the agreements.

**Certification/authentication of nodes:** Providing nodes with an identity (e.g. a certificate) in the network that others recognize and that can be used to secure communication channels and sign transactions.

### 3.1.2. Governance of the block generation

The governance of the block generation is determined by the consensus protocol. It consists on who and under which conditions can operate a node that generates blocks, and what is the process for the block generation between the validators.

### 3.1.3. Governance of the DID registries

Each of the types of DID registries has a different governance model:

**Credentials registry acting as identifier:** Each subject deploys a dedicated smart contract to register the DID. The subject is in complete control of the registry in the chosen network.

**Global identifiers registry:** As a single monolithic smart contract is deployed in the ledger to act as a global registry, the governance of the smart contract is the governance of the DID registry. 

**Anchors registry:** Again, a single monolithic smart contract is deployed in this case, even the transactions are grouped and registered differently. Therefore, the same applies as for the global identifiers’ registry.

**Bring your own blockchain address:** In this case, there is not such a thing as a DID registry, at least a static one. The management and storage of the DIDs is done off-chain by the subject and/or holder and resolving a DID is done by iteration over its registries (transactions) in the ledger. 

### 3.1.4. Governance of the trusted lists

Depending on the trust framework, different entities will be responsible for maintaining trusted lists. We can classify the governance of the trusted lists in two types, depending on if the government is playing the main role in the trust framework or not.

**Government-based:** A government either is the root CA or designates a list of root CAs. The government also set the rules for who and how can issue qualified certificates to others.

**Non-government-based:** The government is not the root CA, and through private-agreements a trust framework emerge so different entities decide to trust other entities as root CAs.

### 3.1.5. Governance of the keys and credentials 

The governance of the keys and credentials includes:

•	Who can have access to the keys and credentials of a subject
•	Who can present a credential to others and under which conditions
•	Where are the back-ups
•	Who can facilitate the key recovery for a subject
•	Who is responsible and liable for a loss or theft of keys and credentials

### 3.1.6. The governance of LACChain ID

LACChain ID is developing a solution proposal to provide a scalable, decentralized, and transparent governance, that offers all the guaranties with regards to legal matters.

**Governance of the decentralized network:** L-Net, an orchestration non-profit legal vehicle currently in process of incorporation.

**Governance of the block generation:** Any entity can become a block generator (a validator node) if it satisfies the technical and legal requirements and becomes and signs a SLA. The consensus protocol also incorporates: the verification that the transaction was broadcasted by an authorized node and the automatic rotation of nodes according to decentralization and performance.

**Governance of the DID registries:** Although the governance will vary depending on the DID method, it will be typically based on a contract governing actions by the digital wallet, the identity issuer, or a trusted third party.

**Governance of the trusted lists:** Governance of trusted lists is fully automatized and based on smart contracts managed by the identity issuers.

**Governance of the keys and credentials:** The subject must be able to decide who to give access to their keys and credentials. Centralized and decentralized options for key recovery will be enabled.


