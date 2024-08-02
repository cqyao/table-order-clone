SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	47312dbc-0b76-4a67-a58a-94933390cfd9	{"action":"user_invited","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"supabase_admin","actor_via_sso":false,"log_type":"team","traits":{"user_email":"timothyjt96@gmail.com","user_id":"53e93b80-9aa6-4b76-99a6-31d33d762e97"}}	2024-07-29 00:10:01.204187+00	
00000000-0000-0000-0000-000000000000	9a49fe8e-7fd5-43d6-b0d2-e268e80685d7	{"action":"user_invited","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"supabase_admin","actor_via_sso":false,"log_type":"team","traits":{"user_email":"timothyjt96@gmail.com","user_id":"53e93b80-9aa6-4b76-99a6-31d33d762e97"}}	2024-07-29 00:20:23.351854+00	
00000000-0000-0000-0000-000000000000	12fc084e-23df-4ba3-96b2-9e0325b714a1	{"action":"user_signedup","actor_id":"53e93b80-9aa6-4b76-99a6-31d33d762e97","actor_username":"timothyjt96@gmail.com","actor_via_sso":false,"log_type":"team"}	2024-07-29 00:20:40.766305+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	53e93b80-9aa6-4b76-99a6-31d33d762e97	authenticated	authenticated	timothyjt96@gmail.com	$2a$10$nqEEqbYIHewHyp3/skAP6OpeoxgbUpX2jKglbzaM/ShGkF.0KUlay	2024-07-29 00:20:40.766803+00	2024-07-29 00:20:23.352679+00		\N		\N			\N	2024-07-29 00:20:40.770267+00	{"provider": "email", "providers": ["email"]}	{}	\N	2024-07-29 00:10:01.176831+00	2024-07-29 00:20:40.774575+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
53e93b80-9aa6-4b76-99a6-31d33d762e97	53e93b80-9aa6-4b76-99a6-31d33d762e97	{"sub": "53e93b80-9aa6-4b76-99a6-31d33d762e97", "email": "timothyjt96@gmail.com", "email_verified": false, "phone_verified": false}	email	2024-07-29 00:10:01.198924+00	2024-07-29 00:10:01.198976+00	2024-07-29 00:10:01.198976+00	8b161cd8-a838-452e-8f13-3b7bf2059e62
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
ebff57db-0893-4a25-bb1b-5dade505bc31	53e93b80-9aa6-4b76-99a6-31d33d762e97	2024-07-29 00:20:40.770332+00	2024-07-29 00:20:40.770332+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15	203.10.91.88	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
ebff57db-0893-4a25-bb1b-5dade505bc31	2024-07-29 00:20:40.77501+00	2024-07-29 00:20:40.77501+00	otp	d0c00e3c-72a0-42db-8fda-f8c993771cd5
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	1	XuapGwTN3J5eTJY9Rejs2Q	53e93b80-9aa6-4b76-99a6-31d33d762e97	f	2024-07-29 00:20:40.771967+00	2024-07-29 00:20:40.771967+00	\N	ebff57db-0893-4a25-bb1b-5dade505bc31
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: Cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Cart" ("id", "items", "total_price", "restaurant_id", "created_at") FROM stdin;
\.


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."admin" ("id", "email", "password", "shop_name", "phone_number", "address", "email_verified") FROM stdin;
1	snm9606@naver.com	$2b$10$CU.herkYzrXp0JSHXJFOo.b2TG8TM364MACgTAd2wNnhV/ubCOCIW	illnara	0414989606	Unit 2/6 Daisy StFairy Meadow NSW 2519, Australia	t
21	snm9606@gmail.com	$2b$10$267zK6v34cBZeZCOQNUU8OLIFx9nzFqLMeBapomfoppU5063Y20uS	Jacob	0414989606	Unit 2/6 Daisy StFairy Meadow NSW 2519, Australia	t
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."items" ("id", "name", "price", "description", "image_url", "created_at") FROM stdin;
13	Chicken	24.00	Whole chicken	https://nirarnqszpwmznmykxaf.supabase.co/storage/v1/object/public/items/1722505379415-Korean Chciken.jpg	2024-08-01 09:43:03.845606+00
14	Bibimbap	12.00	delicious	https://nirarnqszpwmznmykxaf.supabase.co/storage/v1/object/public/items/1722506488098-bibimbap.jpeg	2024-08-01 10:01:32.524923+00
\.


--
-- Data for Name: items_duplicate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."items_duplicate" ("id", "name", "price", "description", "image_url", "created_at") FROM stdin;
13	Chicken	24.00	Whole chicken	https://nirarnqszpwmznmykxaf.supabase.co/storage/v1/object/public/items/1722505379415-Korean Chciken.jpg	2024-08-01 09:43:03.845606+00
14	bibimbap	12.00	delicious	https://nirarnqszpwmznmykxaf.supabase.co/storage/v1/object/public/items/1722506488098-bibimbap.jpeg	2024-08-01 10:01:32.524923+00
\.


--
-- Data for Name: menuitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."menuitems" ("id", "name", "price", "description", "imageurl") FROM stdin;
696f3bda-866c-4a91-83b4-8b542bff9709	Meat Bibimbap	13		\N
9c09065f-9eda-40f5-bbef-a1ddec352e05	Half & half chicken	25.5	\N	\N
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."orders" ("id", "tableid", "item", "price", "status", "createdat") FROM stdin;
8b494522-c9ff-4139-8e8e-de6b3ef98938	9406d8a5-d375-47be-93fb-b9b51887a953	["Meat bibimbap", "Kimchi pancake"]	50.9	pending	\N
68c62e88-c4ad-4a46-92e2-09638cca14fc	5299c1f8-eaa9-4528-a781-7b795233d64b	["Galbijim", "Sogogi beoseot jeongol", "Gamjatang"]	115.5	pending	\N
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
items	items	\N	2024-07-30 06:48:35.371351+00	2024-07-30 06:48:35.371351+00	t	f	\N	\N	\N
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id") FROM stdin;
2da5bf7f-0950-4bd6-aece-f52d10160464	items	public/.emptyFolderPlaceholder	\N	2024-08-01 09:22:30.809721+00	2024-08-01 09:22:30.809721+00	2024-08-01 09:22:30.809721+00	{"eTag": "\\"d41d8cd98f00b204e9800998ecf8427e\\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2024-08-01T09:22:31.000Z", "contentLength": 0, "httpStatusCode": 200}	c2a904d8-cb92-4d47-8b4b-62f822d0dc83	\N
d4297c0d-b1ab-4d2f-93eb-fac104e1da47	items	1722505379415-Korean Chciken.jpg	\N	2024-08-01 09:43:03.651169+00	2024-08-01 09:43:03.651169+00	2024-08-01 09:43:03.651169+00	{"eTag": "\\"fab9fb318e94e3a1861f6e88c4c8e4d5\\"", "size": 161628, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-08-01T09:43:04.000Z", "contentLength": 161628, "httpStatusCode": 200}	5c9be595-38d1-4068-9951-99e72b43adf2	\N
a1c2359c-4224-433c-b48e-dee26dd3d58d	items	1722506488098-bibimbap.jpeg	\N	2024-08-01 10:01:32.333774+00	2024-08-01 10:01:32.333774+00	2024-08-01 10:01:32.333774+00	{"eTag": "\\"f869534070bf48d41d954b41dad4d0ee\\"", "size": 9844, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-08-01T10:01:33.000Z", "contentLength": 9844, "httpStatusCode": 200}	9e8253bc-a0cf-4e73-b3b2-fb19eef0cb05	\N
842f2d2b-a30a-49e0-92cf-d9567941414c	items	1722519258848-Korean Chciken.jpg	\N	2024-08-01 13:34:22.593002+00	2024-08-01 13:34:22.593002+00	2024-08-01 13:34:22.593002+00	{"eTag": "\\"fab9fb318e94e3a1861f6e88c4c8e4d5\\"", "size": 161628, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-08-01T13:34:23.000Z", "contentLength": 161628, "httpStatusCode": 200}	64f57ca4-6b94-4e82-91c0-1ce7a4b91cdd	\N
5c4d1e0a-9f60-424f-8bb6-3b4ada63ec2c	items	1722519520648-Korean Chciken.jpg	\N	2024-08-01 13:38:44.092005+00	2024-08-01 13:38:44.092005+00	2024-08-01 13:38:44.092005+00	{"eTag": "\\"fab9fb318e94e3a1861f6e88c4c8e4d5\\"", "size": 161628, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-08-01T13:38:44.000Z", "contentLength": 161628, "httpStatusCode": 200}	8059865a-defe-463e-a2b4-ff48d91d3621	\N
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: Cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Cart_id_seq"', 1, false);


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."admin_id_seq"', 21, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."items_id_seq"', 14, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
