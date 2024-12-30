-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        11.5.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `comment` (
	`comment_id` VARCHAR(36) NOT NULL COLLATE 'utf8mb3_general_ci',
	`comment_author` VARCHAR(255) NOT NULL COLLATE 'utf8mb3_general_ci',
	`comment_content` TEXT NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`comment_created_at` DATETIME(6) NOT NULL,
	`comment_updated_at` DATETIME(6) NOT NULL,
	`is_deleted` BIT(1) NOT NULL,
	`post_id` VARCHAR(255) NOT NULL COLLATE 'utf8mb3_general_ci',
	PRIMARY KEY (`comment_id`) USING BTREE
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;


-- 테이블 데이터 kkomoadopt.comment:~50 rows (대략적) 내보내기
INSERT IGNORE INTO `comment` (`comment_id`, `comment_author`, `comment_content`, `comment_created_at`, `comment_updated_at`, `is_deleted`, `post_id`) VALUES
	('0f8e2319-74ec-405c-b2f6-5f698320a205', 'sophia987', '정말 유용한 정보네요! 감사합니다. 다음 포스트도 기대됩니다.', '2024-12-04 13:30:00.000000', '2024-12-04 13:30:00.000000', b'0', '38'),
	('143ad85c-8d0b-40e4-ab19-842bb871ac42', 'sophia876', '이 글 덕분에 많은 도움이 됐습니다. 감사합니다!', '2024-12-05 09:00:00.000000', '2024-12-05 09:00:00.000000', b'0', '59'),
	('18dbd8c5-c1f0-4d58-be94-0c3f39a0e9d3', 'alex567', '상세하게 설명해주셔서 이해하기 쉬웠어요. 다음 포스트도 기대됩니다!', '2024-12-04 09:00:00.000000', '2024-12-04 09:00:00.000000', b'0', '29'),
	('18eecd18-d6bb-45d3-bd70-3a7ac0a65409', 'jason547', '이 포스트 덕분에 새로운 아이디어를 얻었습니다. 유용한 정보 감사합니다!', '2024-12-04 12:00:00.000000', '2024-12-04 12:00:00.000000', b'0', '35'),
	('1ac8750e-62fd-4ca7-9a1e-8d943a518043', 'lily789', '이 주제에 대해 다양한 관점을 배울 수 있어 좋았습니다. 감사합니다!', '2024-12-04 07:30:00.000000', '2024-12-04 07:30:00.000000', b'0', '26'),
	('2226bdb7-4c1e-4631-a0ff-a453025adf4f', 'mike23', '간결하면서도 핵심을 잘 전달해주셔서 감사합니다!', '2024-12-04 04:00:00.000000', '2024-12-04 04:00:00.000000', b'0', '19'),
	('249e5a71-74c0-439f-a2b2-55a9c744983c', 'emily321', '정말 유익한 글이었습니다. 글쓴이의 연구가 더 궁금하네요!', '2024-12-04 06:30:00.000000', '2024-12-04 06:30:00.000000', b'0', '24'),
	('24c41543-94be-4e5b-b2c3-3a2287afe83c', 'lucas789', '매우 상세하고 잘 설명된 글입니다. 앞으로도 이런 글 많이 부탁드려요.', '2024-12-04 19:30:00.000000', '2024-12-04 19:30:00.000000', b'0', '50'),
	('28783506-97b9-4456-9a1a-359132ec6f0d', 'mike23', '간단하면서도 유익한 정보네요. 잘 읽었습니다!', '2024-12-04 20:30:00.000000', '2024-12-04 20:30:00.000000', b'0', '52'),
	('2b2a7513-dd93-4185-9e6b-b4aa09b36753', 'jackson123', '이 글을 보고 많은 도움이 되었어요! 공유해주셔서 감사합니다.', '2024-12-05 11:00:00.000000', '2024-12-05 11:00:00.000000', b'0', '63'),
	('3305d5d0-2625-450d-9aa7-64be8580a0e1', 'olivia876', '좋은 정보 감사해요! 계속 이런 글 기대할게요.', '2024-12-05 12:30:00.000000', '2024-12-05 12:30:00.000000', b'0', '66'),
	('34debc6d-5ad3-423b-92ff-7c121fcfdeb7', 'mike987', '잘 정리된 글 감사합니다. 덕분에 더 쉽게 이해했어요!', '2024-12-04 17:00:00.000000', '2024-12-04 17:00:00.000000', b'0', '45'),
	('3c20a89a-d262-4134-a7d8-0a9f22ceb845', 'sophia876', '이 글을 통해 많은 것을 배웠습니다. 감사합니다!', '2024-12-04 18:30:00.000000', '2024-12-04 18:30:00.000000', b'0', '48'),
	('42ef6372-a731-4cfd-afb5-8bd75bd0123d', 'alice123', '잘 정리된 글 덕분에 주제를 쉽게 이해할 수 있었습니다. 고맙습니다!', '2024-12-04 05:00:00.000000', '2024-12-04 05:00:00.000000', b'0', '21'),
	('58e349d3-3767-4b7f-9349-ab0846d9f04d', 'james1123', '잘 읽었습니다. 추가적인 예시나 자료도 있으면 좋겠어요.', '2024-12-04 09:30:00.000000', '2024-12-04 09:30:00.000000', b'0', '30'),
	('596a6d56-d654-4bf8-998b-6af0a130ef31', 'sophia892', '이 글에서 다룬 주제가 매우 흥미롭네요! 더 많은 정보를 알고 싶습니다.', '2024-12-04 11:00:00.000000', '2024-12-04 11:00:00.000000', b'0', '33'),
	('5c7eca5a-6083-4627-a455-db142432bd61', 'lucas789', '설명이 너무 상세하고 쉽게 이해돼서 좋아요!', '2024-12-05 11:30:00.000000', '2024-12-05 11:30:00.000000', b'0', '64'),
	('5e79f5e0-d246-4ca8-9554-dc1c8ea42cbd', 'sujin94', '정말 인상 깊은 글이네요. 글을 읽고 많은 것을 배웠습니다!', '2024-12-04 03:30:00.000000', '2024-12-04 03:30:00.000000', b'0', '18'),
	('7ca908ec-73ba-46b0-8653-c52773866ee3', 'susie456', '잘 정리된 글이라 정말 이해하기 쉬웠어요. 앞으로도 기대됩니다!', '2024-12-04 07:00:00.000000', '2024-12-04 07:00:00.000000', b'0', '25'),
	('7ea893eb-9147-4198-810a-12189af3f2ef', 'jackson123', '이 주제에 대해 더 깊이 있는 논의가 있었으면 좋겠어요. 잘 읽었습니다.', '2024-12-04 05:30:00.000000', '2024-12-04 05:30:00.000000', b'0', '22'),
	('80aa6243-f97a-4b89-824f-13bfe28a2448', 'daniel234', '재미있고 유익한 정보 감사합니다. 추가적인 내용도 궁금하네요!', '2024-12-04 08:00:00.000000', '2024-12-04 08:00:00.000000', b'0', '27'),
	('82a840db-de37-4ea7-ac65-11d225c925a0', 'julia567', '이 주제에 대해 더 알고 싶어요. 추가적인 정보가 있으면 알려주세요.', '2024-12-04 16:30:00.000000', '2024-12-04 16:30:00.000000', b'0', '44'),
	('89f9787c-0e95-4875-b5bb-3aa74a2a5a3d', 'ella345', '이 포스트 덕분에 많은 것을 배웠습니다. 정말 감사합니다!', '2024-12-04 10:30:00.000000', '2024-12-04 10:30:00.000000', b'0', '32'),
	('91d2e0b5-ae44-4af3-96d4-0c5b9c50d26f', 'julia567', '좋은 정보 감사합니다! 제가 시도해봐야겠어요.', '2024-12-04 22:00:00.000000', '2024-12-04 22:00:00.000000', b'0', '55'),
	('a1c9a3ef-165e-4c9b-b3f6-761db17707ab', 'michael334', '이 포스트를 통해 많은 것을 배웠습니다. 정말 유익했어요!', '2024-12-04 15:00:00.000000', '2024-12-04 15:00:00.000000', b'0', '41'),
	('a42fd623-e576-4b04-b497-49f8efcb0357', 'sophia987', '이 글은 정말 유익하네요. 더 많은 팁을 부탁드립니다!', '2024-12-04 21:00:00.000000', '2024-12-04 21:00:00.000000', b'0', '53'),
	('a851ff0a-c6fc-4590-b893-8e4077d7f7ce', 'emily321', '진짜 좋은 팁이네요. 또 다른 글도 기대할게요!', '2024-12-05 10:30:00.000000', '2024-12-05 10:30:00.000000', b'0', '62'),
	('a8d99c11-7a0c-4c5e-a01d-1674e49d2f04', 'mike987', '이 방법을 사용해서 정말 효과를 봤어요. 강력 추천합니다!', '2024-12-05 12:00:00.000000', '2024-12-05 12:00:00.000000', b'0', '65'),
	('b105ff09-6d48-41fa-82ea-265de97e8478', 'lucas789', '이 글은 정말 유익하네요. 더 많은 정보가 궁금합니다.', '2024-12-04 08:30:00.000000', '2024-12-04 08:30:00.000000', b'0', '28'),
	('b3386d9f-f5f6-4de2-b1c7-7b1dc0baa944', 'emily730', '이런 글이 정말 필요했어요. 덕분에 많이 배웠습니다.', '2024-12-04 22:30:00.000000', '2024-12-04 22:30:00.000000', b'0', '56'),
	('b61bf308-f709-487f-8061-efe707c175e6', 'alex539', '아주 잘 설명되어 있어서 이해가 쉬웠습니다. 좋은 정보 감사합니다!', '2024-12-04 18:00:00.000000', '2024-12-04 18:00:00.000000', b'0', '47'),
	('b9f0e7de-f185-4e79-bb97-ffbd0a36a9f1', 'sophia987', '주제에 대한 깊이가 있어 인상적이었습니다. 감사합니다!', '2024-12-04 10:00:00.000000', '2024-12-04 10:00:00.000000', b'0', '31'),
	('ba9f6575-3cb0-40b5-865a-6c25a41277e9', 'olivia543', '좋은 정보 감사합니다! 더 알아보고 싶네요.', '2024-12-04 20:00:00.000000', '2024-12-04 20:00:00.000000', b'0', '51'),
	('bd81877b-d513-4775-bfb6-494c04dc03de', 'alex567', '해보니 정말 유용하네요! 다른 사람들에게도 추천할게요.', '2024-12-05 09:30:00.000000', '2024-12-05 09:30:00.000000', b'0', '60'),
	('be86ccd3-73b0-4cda-8ccb-e406ee071645', 'lucas876', '정말 유익한 글이네요! 다시 읽어보며 더 공부할 수 있을 것 같습니다.', '2024-12-04 16:00:00.000000', '2024-12-04 16:00:00.000000', b'0', '43'),
	('c1929bfa-add5-4201-bcf0-c7acaa9da74e', 'alex539', '완전 도움이 되네요! 이렇게 쉽게 설명해주셔서 감사합니다.', '2024-12-04 23:00:00.000000', '2024-12-04 23:00:00.000000', b'0', '57'),
	('cc6626a4-5182-40e9-ac04-30844526542a', 'emma122', '다음 글도 기대됩니다! 이렇게 유익한 정보를 제공해 주셔서 감사합니다.', '2024-12-04 12:30:00.000000', '2024-12-04 12:30:00.000000', b'0', '36'),
	('cd1b0e9f-b1f6-4dd1-ab04-1cb8ff4815ce', 'michael334', '상세한 설명 덕분에 이해하기 쉬웠어요. 감사합니다.', '2024-12-05 10:00:00.000000', '2024-12-05 10:00:00.000000', b'0', '61'),
	('ce156a82-c02a-4118-ab24-1443b72c8073', 'lucas876', '설명이 정말 깔끔하고 이해하기 쉬웠어요. 감사합니다!', '2024-12-04 21:30:00.000000', '2024-12-04 21:30:00.000000', b'0', '54'),
	('ce28e711-4cf4-4ce3-9901-4866c3248673', 'lucas987', '정말 유익한 정보네요! 바로 적용해봐야겠어요.', '2024-12-05 08:30:00.000000', '2024-12-05 08:30:00.000000', b'0', '58'),
	('d1f38d84-2f57-444e-93f1-4e7fcf75bdc9', 'lucas124', '잘 설명되어 있어서 쉽게 이해할 수 있었습니다. 감사합니다!', '2024-12-04 11:30:00.000000', '2024-12-04 11:30:00.000000', b'0', '34'),
	('d5f655f6-6f37-4940-9e51-8240caa86832', 'emily999', '이 글을 읽고 많은 도움이 되었습니다. 추가적인 팁도 있으면 공유해주세요!', '2024-12-04 17:30:00.000000', '2024-12-04 17:30:00.000000', b'0', '46'),
	('d6369a93-8266-4741-b1ae-ce4f28dc3c97', 'daniel234', '정말 유익한 내용이네요. 적극적으로 활용해봐야겠어요.', '2024-12-05 13:00:00.000000', '2024-12-05 13:00:00.000000', b'0', '67'),
	('da336518-a62a-4b2f-81eb-29e0e83af1d6', 'lucas987', '이 주제에 대한 설명이 정말 잘 되어 있어요. 덕분에 쉽게 이해했어요!', '2024-12-04 14:00:00.000000', '2024-12-04 14:00:00.000000', b'0', '39'),
	('dc590415-ff75-47de-bfde-45826db462b8', 'alex567', '이런 팁은 정말 유용합니다. 실제로 적용해보겠습니다!', '2024-12-04 19:00:00.000000', '2024-12-04 19:00:00.000000', b'0', '49'),
	('e260545a-85fa-4660-9777-2cb134edc51b', 'isabella823', '매우 유익한 내용이었습니다! 더 많은 팁을 알고 싶어요.', '2024-12-04 13:00:00.000000', '2024-12-04 13:00:00.000000', b'0', '37'),
	('e2d3e52e-0d03-421c-a2ed-0ea8363d2408', 'lucas789', '간단명료한 설명이 마음에 들어요. 감사합니다!', '2024-12-04 15:30:00.000000', '2024-12-04 15:30:00.000000', b'0', '42'),
	('e704c6bc-3a4d-4c6c-bfa8-2aaa093dd697', 'steve1980', '이 주제에 대해 더 많이 다뤄주셨으면 좋겠어요. 기대됩니다!', '2024-12-04 04:30:00.000000', '2024-12-04 04:30:00.000000', b'0', '20'),
	('ed1525c1-7902-4ea2-bece-888ed4620766', 'james1123', '굉장히 흥미로운 글입니다. 꼭 다시 읽어봐야겠어요!', '2024-12-04 14:30:00.000000', '2024-12-04 14:30:00.000000', b'0', '40'),
	('ef22bc67-dee5-4127-b4fb-23b1ce81d28b', 'mike987', '이 글을 읽고 나니 더 많은 정보를 알고 싶어졌어요. 감사합니다!', '2024-12-04 06:00:00.000000', '2024-12-04 06:00:00.000000', b'0', '23');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;