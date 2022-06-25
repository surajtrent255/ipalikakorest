INSERT INTO family_member (
	`family_id`,
	`full_name`,
	`relation_id`,
	`age`,
	`gender_id`,
	`marital_status`,
	`qualification_id`,
	`occupation`,
	`has_voter_id`,
	`health_status`,
	`member_id`,
	`dob_ad`,
	`dob_bs`
) VALUE
(
	:mainId,
	:name,
	:relation,
	:age,
	:gender,
	:maritalStatus,
	:education,
	:occupation,
	:voterCard,
	:healthCondition,
	:memberId,
	:dateOfBirthAD,
	:dateOfBirthBS
);