#!/usr/bin/perl
use strict; use warnings;

use Test::Most;
require Test::NoWarnings;

use lib 'lib';
use Experian::IDAuth;

my $proveid = Experian::IDAuth->new(
    client        => {},
    search_option => 'ProveID_KYC'
);

sub examine {
    my $xml = shift;
    $proveid->set(result_as_xml => $xml)->_get_result_proveid;
}

my $fully1 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <CountryCode>GBR</CountryCode>
  <Person>
    <Name>
      <Forename>XXX</Forename>
      <Surname>XXX</Surname>
    </Name>
    <DateOfBirth>1960-11-08</DateOfBirth>
    <Age>52</Age>
  </Person>
  <Addresses>
    <Address Current="1">
      <Premise>XXX</Premise>
      <Postcode>SM6 0RA</Postcode>
      <CountryCode>GBR</CountryCode>
    </Address>
  </Addresses>
  <Telephones>
    <Telephone Type="U">
      <Number>448777777777</Number>
    </Telephone>
  </Telephones>
  <YourReference>PK_MX1003_1360909791</YourReference>
  <SearchOptions>
    <ProductCode>ProveID_KYC</ProductCode>
  </SearchOptions>
  <OurReference>17A0C43C-09D4-44BE-9C70-5C8B7904A260</OurReference>
  <SearchDate>2013-02-15T06:29:54</SearchDate>
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>4</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>4</Count>
        </SurnameAndAddress>
        <Address>
          <Count>4</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>-1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision />
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <Deceased Type="NoMatch" />
    <CreditReference Type="Result">
      <Summary>
        <Decision>1</Decision>
        <DecisionReasons>
          <DecisionReason>
            <Element>CreditReferenceSummary/TotalNumberOfVerifications</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/OpenAccountsMatch</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/DateOfBirthMatch</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/ElectoralRollMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/ElectoralRollDateOfBirthMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/TelephoneDirectoryMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/PhoneNumberMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/BOEMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/PEPMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/OFACMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/DeceasedMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/COAMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/CIFASMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/NoOfCCJ</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/NoOfOpenAccountsLenders</Element>
            <Decision>1</Decision>
          </DecisionReason>
        </DecisionReasons>
      </Summary>
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>3</TotalNumberOfVerifications>
        <OpenAccountsMatch>1</OpenAccountsMatch>
        <DateOfBirthMatch>1</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>2</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
      <CreditReferenceDetails>
        <StandardisedAddress Current="1">
          <SubPremise />
          <Premise>TORWOOD</Premise>
          <Street>THE WOODEND</Street>
          <PostTown>WALLINGTON</PostTown>
          <Locality />
          <Region>SURREY</Region>
          <Postcode>SM6 0RA</Postcode>
          <CountryCode>GBR</CountryCode>
        </StandardisedAddress>
      </CreditReferenceDetails>
    </CreditReference>
    <Telephony Type="Result">
      <Summary>
        <Decision>-1</Decision>
        <DecisionReasons>
          <DecisionReason>
            <Element>TelephonyRecord/Person/Name/Forename</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>TelephonyRecord/Person/Name/Surname</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>TelephonyRecord/Address/Premise</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>TelephonyRecord/Address/Postcode</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>TelephonyRecord/Address/CountryCode</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>TelephonyRecord/Telephones/Telephone/Number</Element>
            <Decision>-1</Decision>
          </DecisionReason>
        </DecisionReasons>
      </Summary>
      <TelephonyRecord>
        <Person>
          <Name>
            <Title>MR</Title>
            <Forename>XXX</Forename>
            <OtherNames>D</OtherNames>
            <Surname>GGGG</Surname>
          </Name>
        </Person>
        <Address Current="1">
          <SubPremise />
          <Premise>TORWOOD</Premise>
          <SubStreet />
          <Street>STREET</Street>
          <SubLocality />
          <Locality />
          <PostTown />
          <Region>SSSSS</Region>
          <Postcode>SM6 0RA</Postcode>
          <CountryCode>GBR</CountryCode>
        </Address>
        <Telephones>
          <Telephone Type="U">
            <Number>020 7777 7777</Number>
            <CustomerType>R</CustomerType>
            <ListingType>DQ</ListingType>
          </Telephone>
        </Telephones>
      </TelephonyRecord>
    </Telephony>
    <Fraud Type="Provisional" />
    <Directors Type="NoMatch" />
    <ElectoralRoll Type="NoMatch" />
  </Result>
</Search>
EOD

my $not_authenticated =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <CountryCode>GBR</CountryCode>
  <Person>
    <Name>
      <Forename>Tchie</Forename>
      <Surname>PASCA</Surname>
    </Name>
    <DateOfBirth>1988-11-05</DateOfBirth>
    <Age>24</Age>
  </Person>
  <Addresses>
    <Address Current="1">
      <Premise>1</Premise>
      <Postcode>E1 0SE</Postcode>
      <CountryCode>GBR</CountryCode>
    </Address>
  </Addresses>
  <Telephones>
    <Telephone Type="U">
      <Number>447777777777</Number>
    </Telephone>
  </Telephones>
  <YourReference>PK_MX1004_1360910381</YourReference>
  <SearchOptions>
    <ProductCode>ProveID_KYC</ProductCode>
  </SearchOptions>
  <OurReference>026A1243-4B46-4753-838E-D0F72F33DD9E</OurReference>
  <SearchDate>2013-02-15T06:39:42</SearchDate>
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>0</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>0</Count>
        </SurnameAndAddress>
        <Address>
          <Count>0</Count>
        </Address>
        <DateOfBirth>
          <Count>0</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>-1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision />
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <Deceased Type="NoMatch" />
    <CreditReference Type="Result">
      <Summary>
        <Decision>-1</Decision>
        <DecisionReasons>
          <DecisionReason>
            <Element>CreditReferenceSummary/TotalNumberOfVerifications</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/OpenAccountsMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/DateOfBirthMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/ElectoralRollMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/ElectoralRollDateOfBirthMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/TelephoneDirectoryMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/PhoneNumberMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/BOEMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/PEPMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/OFACMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/DeceasedMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/COAMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/CIFASMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/NoOfCCJ</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/NoOfOpenAccountsLenders</Element>
            <Decision>-1</Decision>
          </DecisionReason>
        </DecisionReasons>
      </Summary>
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>0</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
      <CreditReferenceDetails>
        <StandardisedAddress Current="0">
          <SubPremise />
          <Premise>1</Premise>
          <Street>CCC WAY</Street>
          <PostTown>LONDON E1</PostTown>
          <Locality />
          <Region />
          <Postcode>E1  0SE</Postcode>
          <CountryCode>GBR</CountryCode>
        </StandardisedAddress>
      </CreditReferenceDetails>
    </CreditReference>
    <Telephony Type="NoMatch" />
    <Fraud Type="Provisional" />
    <Directors Type="NoMatch" />
    <ElectoralRoll Type="NoMatch" />
  </Result>
</Search>
EOD

my $fully2 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <CountryCode>GBR</CountryCode>
  <Person>
    <Name>
      <Forename>Poo</Forename>
      <Surname>Tchi</Surname>
    </Name>
    <DateOfBirth>1988-11-05</DateOfBirth>
    <Age>24</Age>
  </Person>
  <Addresses>
    <Address Current="1">
      <Premise>7</Premise>
      <Postcode>E1 0SE</Postcode>
      <CountryCode>GBR</CountryCode>
    </Address>
  </Addresses>
  <Telephones>
    <Telephone Type="U">
      <Number>447777777777</Number>
    </Telephone>
  </Telephones>
  <YourReference>PK_MX1005_1360911059</YourReference>
  <SearchOptions>
    <ProductCode>ProveID_KYC</ProductCode>
  </SearchOptions>
  <OurReference>E0CF7C5F-6F2E-41AA-A8FD-5F720A9AC886</OurReference>
  <SearchDate>2013-02-15T06:50:59</SearchDate>
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>1</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>1</Count>
        </SurnameAndAddress>
        <Address>
          <Count>1</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision />
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <Deceased Type="NoMatch" />
    <CreditReference Type="Result">
      <Summary>
        <Decision>1</Decision>
        <DecisionReasons>
          <DecisionReason>
            <Element>CreditReferenceSummary/TotalNumberOfVerifications</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/OpenAccountsMatch</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/DateOfBirthMatch</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/ElectoralRollMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/ElectoralRollDateOfBirthMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/TelephoneDirectoryMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/PhoneNumberMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/BOEMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/PEPMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/OFACMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/DeceasedMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/COAMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/CIFASMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/NoOfCCJ</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/NoOfOpenAccountsLenders</Element>
            <Decision>1</Decision>
          </DecisionReason>
        </DecisionReasons>
      </Summary>
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>2</TotalNumberOfVerifications>
        <OpenAccountsMatch>1</OpenAccountsMatch>
        <DateOfBirthMatch>1</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>1</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
      <CreditReferenceDetails>
        <StandardisedAddress Current="1">
          <SubPremise />
          <Premise>7</Premise>
          <Street>CWAY</Street>
          <PostTown>LONDON E1</PostTown>
          <Locality />
          <Region />
          <Postcode>E1  0SE</Postcode>
          <CountryCode>GBR</CountryCode>
        </StandardisedAddress>
      </CreditReferenceDetails>
    </CreditReference>
    <Telephony Type="NoMatch" />
    <Fraud Type="Provisional" />
    <Directors Type="NoMatch" />
    <ElectoralRoll Type="NoMatch" />
  </Result>
</Search>
EOD

my $not_deceased =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <CountryCode>GBR</CountryCode>
  <Person>
    <Name>
      <Forename>T</Forename>
      <Surname>F</Surname>
    </Name>
    <DateOfBirth>1949-03-06</DateOfBirth>
    <Age>63</Age>
  </Person>
  <Addresses>
    <Address Current="1">
      <Premise>3</Premise>
      <Postcode>BS4 3LG</Postcode>
      <CountryCode>GBR</CountryCode>
    </Address>
  </Addresses>
  <Telephones>
    <Telephone Type="U">
      <Number>441177777777</Number>
    </Telephone>
  </Telephones>
  <YourReference>PK_MX1006_1360911719</YourReference>
  <SearchOptions>
    <ProductCode>ProveID_KYC</ProductCode>
  </SearchOptions>
  <OurReference>63DBA21F-D934-48F0-880C-03A48E0A1EFB</OurReference>
  <SearchDate>2013-02-15T07:02:00</SearchDate>
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>6</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>6</Count>
        </SurnameAndAddress>
        <Address>
          <Count>6</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>1</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <Deceased Type="Result">
      <Summary>
        <Decision>1</Decision>
        <DecisionReasons>
          <DecisionReason>
            <Element>DeceasedRecord/Person/Name/Forename</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>DeceasedRecord/Person/Name/Surname</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>DeceasedRecord/Address/Premise</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>DeceasedRecord/Address/Postcode</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>DeceasedRecord/Address/CountryCode</Element>
            <Decision>1</Decision>
          </DecisionReason>
        </DecisionReasons>
      </Summary>
      <DeceasedRecord>
        <Source>HALO</Source>
        <Person>
          <Name>
            <Title />
            <Forename>T</Forename>
            <OtherNames />
            <Surname>F</Surname>
          </Name>
          <Gender>M</Gender>
        </Person>
        <Address Current="1">
          <SubPremise />
          <Premise>3</Premise>
          <SubStreet />
          <Street>G Park</Street>
          <SubLocality />
          <Locality>BRISLINGTON</Locality>
          <PostTown>Bristol</PostTown>
          <Region>Avon</Region>
          <Postcode>BS4 3LG</Postcode>
          <CountryCode>GBR</CountryCode>
        </Address>
        <ConfidenceLevel>1</ConfidenceLevel>
        <DateOfDeath />
      </DeceasedRecord>
    </Deceased>
    <CreditReference Type="Result">
      <Summary>
        <Decision>1</Decision>
        <DecisionReasons>
          <DecisionReason>
            <Element>CreditReferenceSummary/TotalNumberOfVerifications</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/OpenAccountsMatch</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/DateOfBirthMatch</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/ElectoralRollMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/ElectoralRollDateOfBirthMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/TelephoneDirectoryMatch</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/PhoneNumberMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/BOEMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/PEPMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/OFACMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/DeceasedMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/COAMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/CIFASMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/NoOfCCJ</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/NoOfOpenAccountsLenders</Element>
            <Decision>1</Decision>
          </DecisionReason>
        </DecisionReasons>
      </Summary>
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>6</TotalNumberOfVerifications>
        <OpenAccountsMatch>1</OpenAccountsMatch>
        <DateOfBirthMatch>1</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>1</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>4</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
      <CreditReferenceDetails>
        <StandardisedAddress Current="1">
          <SubPremise />
          <Premise>3</Premise>
          <Street>G PARK</Street>
          <PostTown>BRISTOL</PostTown>
          <Locality>BRISLINGTON</Locality>
          <Region>AVON</Region>
          <Postcode>BS4 3LG</Postcode>
          <CountryCode>GBR</CountryCode>
        </StandardisedAddress>
      </CreditReferenceDetails>
    </CreditReference>
    <Telephony Type="Result">
      <Summary>
        <Decision>1</Decision>
      </Summary>
      <TelephonyRecord>
        <Telephones>
          <Telephone Type="U">
            <Number>*** **** *****</Number>
            <CustomerType>R</CustomerType>
            <ListingType>XD</ListingType>
          </Telephone>
        </Telephones>
      </TelephonyRecord>
    </Telephony>
    <Fraud Type="Provisional" />
    <Directors Type="NoMatch" />
    <ElectoralRoll Type="Result">
      <Summary>
        <Decision>1</Decision>
        <DecisionReasons>
          <DecisionReason>
            <Element>ElectoralRollRecord/Person/Name/Forename</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>ElectoralRollRecord/Person/Name/Surname</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>ElectoralRollRecord/ERAddresses/ERAddress/Address/Premise</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>ElectoralRollRecord/ERAddresses/ERAddress/Address/Postcode</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>ElectoralRollRecord/ERAddresses/ERAddress/Address/CountryCode</Element>
            <Decision>1</Decision>
          </DecisionReason>
        </DecisionReasons>
      </Summary>
      <ElectoralRollRecord>
        <Person>
          <Name>
            <Title>MR</Title>
            <Forename>T</Forename>
            <OtherNames>C</OtherNames>
            <Surname>F</Surname>
          </Name>
          <Gender>M</Gender>
        </Person>
        <ERAddresses>
          <ERAddress>
            <Address Current="" TimeAtAddress="1700">
              <SubPremise />
              <Premise>3</Premise>
              <SubStreet />
              <Street>G PARK</Street>
              <SubLocality />
              <Locality />
              <PostTown />
              <Region>Avon</Region>
              <Postcode>BS4 3LG</Postcode>
              <CountryCode>GBR</CountryCode>
            </Address>
            <ERYears>
              <ERYear>2001</ERYear>
              <ERYear>2002</ERYear>
              <ERYear>2003</ERYear>
              <ERYear>2004</ERYear>
            </ERYears>
          </ERAddress>
        </ERAddresses>
      </ElectoralRollRecord>
    </ElectoralRoll>
  </Result>
</Search>
EOD

my $deceased =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <CountryCode>GBR</CountryCode>
  <Person>
    <Name>
      <Forename>T</Forename>
      <Surname>F</Surname>
    </Name>
    <DateOfBirth>1949-03-06</DateOfBirth>
    <Age>63</Age>
  </Person>
  <Addresses>
    <Address Current="1">
      <Premise>3</Premise>
      <Postcode>BS4 3LG</Postcode>
      <CountryCode>GBR</CountryCode>
    </Address>
  </Addresses>
  <Telephones>
    <Telephone Type="U">
      <Number>441177777777</Number>
    </Telephone>
  </Telephones>
  <YourReference>PK_MX1006_1360911719</YourReference>
  <SearchOptions>
    <ProductCode>ProveID_KYC</ProductCode>
  </SearchOptions>
  <OurReference>63DBA21F-D934-48F0-880C-03A48E0A1EFB</OurReference>
  <SearchDate>2013-02-15T07:02:00</SearchDate>
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>6</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>6</Count>
        </SurnameAndAddress>
        <Address>
          <Count>6</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>1</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <Deceased Type="Result">
      <Summary>
        <Decision>1</Decision>
        <DecisionReasons>
          <DecisionReason>
            <Element>DeceasedRecord/Person/Name/Forename</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>DeceasedRecord/Person/Name/Surname</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>DeceasedRecord/Address/Premise</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>DeceasedRecord/Address/Postcode</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>DeceasedRecord/Address/CountryCode</Element>
            <Decision>1</Decision>
          </DecisionReason>
        </DecisionReasons>
      </Summary>
      <DeceasedRecord>
        <Source>HALO</Source>
        <Person>
          <Name>
            <Title />
            <Forename>T</Forename>
            <OtherNames />
            <Surname>F</Surname>
          </Name>
          <Gender>M</Gender>
        </Person>
        <Address Current="1">
          <SubPremise />
          <Premise>3</Premise>
          <SubStreet />
          <Street>G Park</Street>
          <SubLocality />
          <Locality>BRISLINGTON</Locality>
          <PostTown>Bristol</PostTown>
          <Region>Avon</Region>
          <Postcode>BS4 3LG</Postcode>
          <CountryCode>GBR</CountryCode>
        </Address>
        <ConfidenceLevel>7</ConfidenceLevel>
        <DateOfDeath />
      </DeceasedRecord>
    </Deceased>
    <CreditReference Type="Result">
      <Summary>
        <Decision>1</Decision>
        <DecisionReasons>
          <DecisionReason>
            <Element>CreditReferenceSummary/TotalNumberOfVerifications</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/OpenAccountsMatch</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/DateOfBirthMatch</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/ElectoralRollMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/ElectoralRollDateOfBirthMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/TelephoneDirectoryMatch</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/PhoneNumberMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/BOEMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/PEPMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/OFACMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/DeceasedMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/COAMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/CIFASMatch</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/NoOfCCJ</Element>
            <Decision>-1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>CreditReferenceSummary/NoOfOpenAccountsLenders</Element>
            <Decision>1</Decision>
          </DecisionReason>
        </DecisionReasons>
      </Summary>
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>6</TotalNumberOfVerifications>
        <OpenAccountsMatch>1</OpenAccountsMatch>
        <DateOfBirthMatch>1</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>1</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>4</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
      <CreditReferenceDetails>
        <StandardisedAddress Current="1">
          <SubPremise />
          <Premise>3</Premise>
          <Street>G PARK</Street>
          <PostTown>BRISTOL</PostTown>
          <Locality>BRISLINGTON</Locality>
          <Region>AVON</Region>
          <Postcode>BS4 3LG</Postcode>
          <CountryCode>GBR</CountryCode>
        </StandardisedAddress>
      </CreditReferenceDetails>
    </CreditReference>
    <Telephony Type="Result">
      <Summary>
        <Decision>1</Decision>
      </Summary>
      <TelephonyRecord>
        <Telephones>
          <Telephone Type="U">
            <Number>*** **** *****</Number>
            <CustomerType>R</CustomerType>
            <ListingType>XD</ListingType>
          </Telephone>
        </Telephones>
      </TelephonyRecord>
    </Telephony>
    <Fraud Type="Provisional" />
    <Directors Type="NoMatch" />
    <ElectoralRoll Type="Result">
      <Summary>
        <Decision>1</Decision>
        <DecisionReasons>
          <DecisionReason>
            <Element>ElectoralRollRecord/Person/Name/Forename</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>ElectoralRollRecord/Person/Name/Surname</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>ElectoralRollRecord/ERAddresses/ERAddress/Address/Premise</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>ElectoralRollRecord/ERAddresses/ERAddress/Address/Postcode</Element>
            <Decision>1</Decision>
          </DecisionReason>
          <DecisionReason>
            <Element>ElectoralRollRecord/ERAddresses/ERAddress/Address/CountryCode</Element>
            <Decision>1</Decision>
          </DecisionReason>
        </DecisionReasons>
      </Summary>
      <ElectoralRollRecord>
        <Person>
          <Name>
            <Title>MR</Title>
            <Forename>T</Forename>
            <OtherNames>C</OtherNames>
            <Surname>F</Surname>
          </Name>
          <Gender>M</Gender>
        </Person>
        <ERAddresses>
          <ERAddress>
            <Address Current="" TimeAtAddress="1700">
              <SubPremise />
              <Premise>3</Premise>
              <SubStreet />
              <Street>G PARK</Street>
              <SubLocality />
              <Locality />
              <PostTown />
              <Region>Avon</Region>
              <Postcode>BS4 3LG</Postcode>
              <CountryCode>GBR</CountryCode>
            </Address>
            <ERYears>
              <ERYear>2001</ERYear>
              <ERYear>2002</ERYear>
              <ERYear>2003</ERYear>
              <ERYear>2004</ERYear>
            </ERYears>
          </ERAddress>
        </ERAddresses>
      </ElectoralRollRecord>
    </ElectoralRoll>
  </Result>
</Search>
EOD

# Note that here we're ignoring ConfidenceLevel in DeceasedRecord, 
# cause DeceasedMatch is in CreditReferenceSummary
my $cr_deceased =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>6</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>6</Count>
        </SurnameAndAddress>
        <Address>
          <Count>6</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>1</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <DeceasedRecord>
      <Source>HALO</Source>
      <Person>
        <Name>
          <Title />
          <Forename>T</Forename>
          <OtherNames />
          <Surname>F</Surname>
        </Name>
        <Gender>M</Gender>
      </Person>
      <Address Current="1">
        <SubPremise />
        <Premise>3</Premise>
        <SubStreet />
        <Street>G Park</Street>
        <SubLocality />
        <Locality>BRISLINGTON</Locality>
        <PostTown>Bristol</PostTown>
        <Region>Avon</Region>
        <Postcode>BS4 3LG</Postcode>
        <CountryCode>GBR</CountryCode>
      </Address>
      <ConfidenceLevel>1</ConfidenceLevel>
      <DateOfDeath />
    </DeceasedRecord>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>6</TotalNumberOfVerifications>
        <OpenAccountsMatch>1</OpenAccountsMatch>
        <DateOfBirthMatch>1</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>1</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>1</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>4</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

my $fraud =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>6</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>6</Count>
        </SurnameAndAddress>
        <Address>
          <Count>6</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>1</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>6</TotalNumberOfVerifications>
        <OpenAccountsMatch>1</OpenAccountsMatch>
        <DateOfBirthMatch>1</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>1</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>4</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

eq_or_diff(
    examine($fully1),
    {
        age_verified        => 1,
        fully_authenticated => 1,
    },
    "Fully1 fully authenticated"
);
eq_or_diff(
    examine($fully2),
    {
        age_verified        => 1,
        fully_authenticated => 1,
    },
    "Fully2 fully authenticated"
);
eq_or_diff(examine($not_authenticated), {}, "Not authenticated as expected");
eq_or_diff(
    examine($not_deceased),
    {
        age_verified        => 1,
        fully_authenticated => 1,
    },
    "Deceased with low certainty level was fully authenticated"
);
eq_or_diff(examine($deceased),    {deceased => 1}, "Found deceased in report summary");
eq_or_diff(examine($cr_deceased), {deceased => 1}, "Found deceased in credit reference");
eq_or_diff(examine($fraud),       {fraud    => 1}, "Found fraud in report summary");

# this one has 2 in KYCSummary, so should be fully authenticated
my $age_only_1 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>2</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>1</Count>
        </SurnameAndAddress>
        <Address>
          <Count>1</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>0</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

# this one has PEPMatch, so should be only age verified, despite 2 in KYCSummary
my $age_only_2 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>2</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>1</Count>
        </SurnameAndAddress>
        <Address>
          <Count>1</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>0</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>1</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

# this one has BOEMatch, so should be only age verified, despite 2 in KYCSummary
my $age_only_3 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>2</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>1</Count>
        </SurnameAndAddress>
        <Address>
          <Count>1</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>0</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>1</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

# this one has OFACMatch, so should be only age verified, despite 2 in KYCSummary
my $age_only_4 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>2</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>1</Count>
        </SurnameAndAddress>
        <Address>
          <Count>1</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>0</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>1</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

# this one has COAMatch, so should be only age verified, despite 2 in KYCSummary
my $age_only_5 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>2</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>1</Count>
        </SurnameAndAddress>
        <Address>
          <Count>1</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>0</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>1</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

# this one has CIFASMatch, so should be only age verified, despite 2 in KYCSummary
my $age_only_6 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>2</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>1</Count>
        </SurnameAndAddress>
        <Address>
          <Count>1</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>0</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>1</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

# this one has CIFASMatch, so should be only age verified, despite 2 in KYCSummary
my $age_only_7 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>2</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>1</Count>
        </SurnameAndAddress>
        <Address>
          <Count>1</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>0</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>1</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

# this one is Director, so only age verified
my $age_only_8 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>2</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>1</Count>
        </SurnameAndAddress>
        <Address>
          <Count>1</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>0</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

# this has 1 in KYCSummary, so should be age verified
my $age_only_9 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>1</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>1</Count>
        </SurnameAndAddress>
        <Address>
          <Count>1</Count>
        </Address>
        <DateOfBirth>
          <Count>1</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>1</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision />
        <CreditReferenceScore />
        <TotalNumberOfVerifications>0</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

# this has 2 in Credit Reference, so fully authenticated
my $age_only_10 =<<EOD;
<?xml version="1.0" encoding="utf-8"?>
<Search Type="Result">
  <Result>
    <Summary>
      <KYCSummary>
        <FullNameAndAddress>
          <Count>0</Count>
        </FullNameAndAddress>
        <SurnameAndAddress>
          <Count>0</Count>
        </SurnameAndAddress>
        <Address>
          <Count>0</Count>
        </Address>
        <DateOfBirth>
          <Count>0</Count>
        </DateOfBirth>
        <Alerts>
          <Count>0</Count>
        </Alerts>
      </KYCSummary>
      <ReportSummary>
        <DatablocksSummary>
          <DatablockSummary>
            <Name>Deceased</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>CreditReference</Name>
            <Decision>1</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Telephony</Name>
            <Decision>0</Decision>
          </DatablockSummary>
          <DatablockSummary>
            <Name>Fraud</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>Directors</Name>
            <Decision />
          </DatablockSummary>
          <DatablockSummary>
            <Name>ElectoralRoll</Name>
            <Decision>0</Decision>
          </DatablockSummary>
        </DatablocksSummary>
      </ReportSummary>
    </Summary>
    <CreditReference Type="Result">
      <CreditReferenceSummary>
        <CreditReferenceDecision>1</CreditReferenceDecision>
        <CreditReferenceScore />
        <TotalNumberOfVerifications>2</TotalNumberOfVerifications>
        <OpenAccountsMatch>0</OpenAccountsMatch>
        <DateOfBirthMatch>0</DateOfBirthMatch>
        <ElectoralRollMatch>0</ElectoralRollMatch>
        <ElectoralRollDateOfBirthMatch>0</ElectoralRollDateOfBirthMatch>
        <TelephoneDirectoryMatch>0</TelephoneDirectoryMatch>
        <PhoneNumberMatch>0</PhoneNumberMatch>
        <DriverLicenceMatch />
        <PassportMatch />
        <DFATMatch />
        <BOEMatch>0</BOEMatch>
        <PEPMatch>0</PEPMatch>
        <OFACMatch>0</OFACMatch>
        <DeceasedMatch>0</DeceasedMatch>
        <COAMatch>0</COAMatch>
        <CIFASMatch>0</CIFASMatch>
        <GoneAwayMatch />
        <HighRiskAddressMatch />
        <CommercialEntitiesAtAddressMatch />
        <NoOfCommercialEntitiesAtAddress />
        <NoOfCCJ>0</NoOfCCJ>
        <NoOfOpenAccountsLenders>0</NoOfOpenAccountsLenders>
        <IDVerified />
      </CreditReferenceSummary>
    </CreditReference>
  </Result>
</Search>
EOD

eq_or_diff(
    examine($age_only_1),
    {
        age_verified        => 1,
        fully_authenticated => 1,
    },
    "Two in KYC Summary so fully authenticated"
);

eq_or_diff(
    examine($age_only_2),
    {
        age_verified => 1,
        matches      => ['PEPMatch'],
    },
    "    but if PEP is set, then age_verified only"
);

eq_or_diff(
    examine($age_only_3),
    {
        age_verified => 1,
        matches      => ['BOEMatch'],
    },
    "    if BOEMatch is set, then age_verified only"
);

eq_or_diff(
    examine($age_only_4),
    {
        deny    => 1,
        matches => ['OFACMatch'],
    },
    "    if OFACMatch is set, then fail verification"
);

eq_or_diff(
    examine($age_only_5),
    {
        age_verified        => 1,
        fully_authenticated => 1,
    },
    "    ignore COAMatch if set, fully authenticate if possible"
);

eq_or_diff(
    examine($age_only_6),
    {
        deny    => 1,
        matches => ['CIFASMatch'],
    },
    "    if CIFASMatch is set, then fail verification"
);

eq_or_diff(
    examine($age_only_7),
    {
        age_verified        => 1,
        fully_authenticated => 1,
    },
    "    ignore CCJs if set, fully authenticate if possible"
);

eq_or_diff(
    examine($age_only_8),
    {
        age_verified => 1,
        matches      => ['Directors'],
    },
    "    if Director, then age_verified only"
);

eq_or_diff(examine($age_only_9), {age_verified => 1,}, "If KYC Summary is 1, then age_verified");

eq_or_diff(
    examine($age_only_10),
    {
        age_verified        => 1,
        fully_authenticated => 1,
    },
    "If Total number of verifications in Credit reference is 2, then fully_authenticated"
);

Test::NoWarnings::had_no_warnings();
done_testing;

