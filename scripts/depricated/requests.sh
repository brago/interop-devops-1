#!/usr/bin/env bash
# CST User Setup
curl -X POST -H "Authorization:Basic YWRtaW46YWRtaW4=" --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{"name": "dfsp1","shortName": "dfsp1","providerUrl": "http://10.0.15.11:8088/scheme/adapter/v1"}' http://10.0.15.13:3000/commands/register
curl -X POST -H "Authorization:Basic YWRtaW46YWRtaW4=" --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{"name": "dfsp2","shortName": "dfsp2","providerUrl": "http://10.0.15.12:8088/scheme/adapter/v1"}' http://10.0.15.13:3000/commands/register
curl -H "Content-Type: application/json" -X POST -d '{"name":"dfsp1","password":"dfsp1"}' http://10.0.15.13:3004/accounts
curl -H "Content-Type: application/json" -X POST -d '{"name":"dfsp2","password":"dfsp2"}' http://10.0.15.13:3004/accounts

# DFSP1 User Setup
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"identifier": "12121212","identifierTypeCode": "eur","firstName": "bob","lastName": "dylan","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "bob","accountName": "bob","password": "1234"}' http://10.0.15.11:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"identifier": "13121212","identifierTypeCode": "eur","firstName": "alice","lastName": "keys","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "alice","accountName": "alice","password": "1234"}' http://10.0.15.11:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"identifier": "14121212","identifierTypeCode": "eur","firstName": "admin","lastName": "admin","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "admin","accountName": "admin","password": "admin"}' http://10.0.15.11:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"identifier": "15121212","identifierTypeCode": "eur","firstName": "dfsp1-testconnector","lastName": "dfsp1-testconnector-last","dob": "10/12/1999","nationalId": "123456789","phoneNumber": "dfsp1-testconnector","accountName": "dfsp1-testconnector","password": "1234"}' http://10.0.15.11:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"identifier": "16121212","identifierTypeCode": "eur","firstName": "merchant","lastName": "merchant","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "merchant","accountName": "merchant","password": "1234"}' http://10.0.15.11:8010/wallet

# DFSP2 User Setup
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"identifier": "22121212","identifierTypeCode": "eur","firstName": "bob","lastName": "dylan","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "bob","accountName": "bob","password": "1234"}' http://10.0.15.12:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"identifier": "23121212","identifierTypeCode": "eur","firstName": "alice","lastName": "keys","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "alice","accountName": "alice","password": "1234"}' http://10.0.15.12:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"identifier": "24121212","identifierTypeCode": "eur","firstName": "admin","lastName": "admin","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "admin","accountName": "admin","password": "admin"}' http://10.0.15.12:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"identifier": "25121212","identifierTypeCode": "eur","firstName": "dfsp2-testconnector","lastName": "dfsp2-testconnector-last","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "4567890123","accountName": "dfsp2-testconnector","password": "1234"}' http://10.0.15.12:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"identifier": "26121212","identifierTypeCode": "eur","firstName": "merchant","lastName": "merchant","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "merchant","accountName": "merchant","password": "1234"}' http://10.0.15.12:8010/wallet

# New DFSP1 User Setup
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"identifierTypeCode": "tel","firstName": "bob","lastName": "dylan","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "1212121212","accountName": "bob","password": "1234"}' http://10.0.15.11:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"identifierTypeCode": "tel","firstName": "alice","lastName": "keys","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "1312121212","accountName": "alice","password": "1234"}' http://10.0.15.11:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"identifierTypeCode": "tel","firstName": "admin","lastName": "admin","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "1412121212","accountName": "admin","password": "admin"}' http://10.0.15.11:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"identifierTypeCode": "tel","firstName": "dfsp1-testconnector","lastName": "dfsp1-testconnector-last","dob": "10/12/1999","nationalId": "123456789","phoneNumber": "1512121212","accountName": "dfsp1-testconnector","password": "1234"}' http://10.0.15.11:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDEtdGVzdDpkZnNwMS10ZXN0" -X POST -d '{"identifierTypeCode": "tel","firstName": "merchant","lastName": "merchant","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "1612121212","accountName": "merchant","password": "1234"}' http://10.0.15.11:8010/wallet

# New DFSP2 User Setup
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"identifierTypeCode": "tel","firstName": "bob","lastName": "dylan","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "2212121212","accountName": "bob","password": "1234"}' http://10.0.15.12:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"identifierTypeCode": "tel","firstName": "alice","lastName": "keys","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "2312121212","accountName": "alice","password": "1234"}' http://10.0.15.12:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"identifierTypeCode": "tel","firstName": "admin","lastName": "admin","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "2412121212","accountName": "admin","password": "admin"}' http://10.0.15.12:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"identifierTypeCode": "tel","firstName": "dfsp2-testconnector","lastName": "dfsp2-testconnector-last","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "2512121212","accountName": "dfsp2-testconnector","password": "1234"}' http://10.0.15.12:8010/wallet
curl -H "Content-Type: application/json" -H "Authorization:Basic ZGZzcDItdGVzdDpkZnNwMi10ZXN0" -X POST -d '{"identifierTypeCode": "tel","firstName": "merchant","lastName": "merchant","dob": "10/12/1999","nationalId": "123654789","phoneNumber": "2612121212","accountName": "merchant","password": "1234"}' http://10.0.15.12:8010/wallet
