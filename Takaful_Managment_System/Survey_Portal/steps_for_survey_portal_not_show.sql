-- Steps for resolving claim not show im portal -- 

--Step No: 01: get the claim code 
select * from ins_claim ic 
where ic.claim_string like '%53919%';

--Step No: 03: now paste in claim_surveyour if data is visible means surveyour is oppinted
-- and then get the surveyour_code 
select * from ins_claim_serveyor ics 
where ics.claim_code = '0700022956';

--Step No: 04:
select * from ins_parttaker ip 
where ip.parent_code = '03000116';

--Step No: 05: Excecute query and then sort Rec_ID and check in In_Active last will not be 
-- 'N' if 'N' then replace into 'Y' show hona start hojae ga 
select * from survey_portal_claim_status cpcs
where cpcs.claim_code = '0700022956';
