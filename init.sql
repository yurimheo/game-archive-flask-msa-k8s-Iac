-- 데이터베이스 및 기본 설정
CREATE DATABASE IF NOT EXISTS game_archive CHARACTER SET utf8 COLLATE utf8_general_ci;
USE game_archive;

-- 유저 테이블
CREATE TABLE IF NOT EXISTS User (
    user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    last_login TIMESTAMP NULL
) CHARACTER SET utf8;

INSERT INTO User (username, password, email)
VALUES
    ('player1', 'password123', 'player1@example.com'),
    ('gamer2', 'password123', 'gamer2@example.com'),
    ('prohunter', 'password123', 'prohunter@example.com'),
    ('wizard101', 'password123', 'wizard101@example.com'),
    ('dragonborn', 'password123', 'dragonborn@example.com'),
    ('stealthking', 'password123', 'stealthking@example.com'),
    ('mage4life', 'password123', 'mage4life@example.com'),
    ('fpsgod', 'password123', 'fpsgod@example.com'),
    ('archer5', 'password123', 'archer5@example.com'),
    ('speedrunner', 'password123', 'speedrunner@example.com'),
    ('tankmain', 'password123', 'tankmain@example.com'),
    ('assassin', 'password123', 'assassin@example.com'),
    ('paladin', 'password123', 'paladin@example.com'),
    ('darkknight', 'password123', 'darkknight@example.com'),
    ('healer', 'password123', 'healer@example.com'),
    ('lootmaster', 'password123', 'lootmaster@example.com'),
    ('sniperelite', 'password123', 'sniperelite@example.com'),
    ('necromancer', 'password123', 'necromancer@example.com'),
    ('bardlife', 'password123', 'bardlife@example.com'),
    ('trickster', 'password123', 'trickster@example.com');

-- 질문 테이블
CREATE TABLE IF NOT EXISTS Question (
    question_id BIGINT AUTO_INCREMENT PRIMARY KEY, -- 질문 ID
    user_id BIGINT NOT NULL,                      -- 사용자 ID
    title VARCHAR(100) NOT NULL,                  -- 질문 제목
    content TEXT NOT NULL,                        -- 질문 내용
    views INT DEFAULT 0,                          -- 조회수
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 생성 일자
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 수정 일자
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES User(user_id) 
        ON DELETE CASCADE ON UPDATE CASCADE       -- 외래 키 제약 조건: 삭제 및 업데이트 동기화
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO Question (user_id, title, content)
VALUES
    (1, 'How to defeat the dragon?', 'I am struggling to beat the final boss dragon in level 5. Any tips?'),
    (2, 'Best equipment for wizards?', 'Which equipment should I focus on as a wizard for PvE content?'),
    (3, 'Fastest way to level up?', 'Any efficient grinding spots or quests to level up faster?'),
    (4, 'Tank build recommendations?', 'What is the best tank build for dealing with high-damage bosses?'),
    (5, 'Multiplayer mode strategies?', 'What are some good strategies for multiplayer PvP?'),
    (6, 'Skill point allocation?', 'How should I distribute skill points as an archer?'),
    (7, 'Which guild to join?', 'Are there any guilds accepting new players?'),
    (8, 'Potion crafting guide?', 'Where can I find recipes for crafting rare potions?'),
    (9, 'Best mounts in-game?', 'Which mount is the fastest and easiest to get?'),
    (10, 'Leveling professions?', 'How do I level up professions quickly?'),
    (11, 'Hidden quest locations?', 'Are there any hidden quests in the new expansion?'),
    (12, 'Best combos for rogue?', 'What are the best skill combos for a rogue?'),
    (13, 'Avoiding traps in dungeons?', 'How do I detect and avoid traps in the new dungeon?'),
    (14, 'Optimal team composition?', 'What is the best team composition for the final raid?'),
    (15, 'Weapon upgrade system?', 'How does the weapon upgrade system work?'),
    (16, 'Rare item farming?', 'What is the best method to farm rare items?'),
    (17, 'Achievement unlocking?', 'How do I unlock the secret achievement in the game?'),
    (18, 'Event rewards?', 'What are the rewards for participating in the summer event?'),
    (19, 'Best XP farming location?', 'What is the best location for XP farming at level 30?'),
    (20, 'Guild wars tips?', 'Any tips for winning guild wars consistently?');

-- 답변 테이블 생성
CREATE TABLE IF NOT EXISTS Answer (
    answer_id BIGINT AUTO_INCREMENT PRIMARY KEY,  -- 답변 ID
    question_id BIGINT NOT NULL,                  -- 질문 ID
    user_id BIGINT NOT NULL,                      -- 작성자 ID
    content TEXT NOT NULL,                        -- 답변 내용
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 작성 일자
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 수정 일자
    FOREIGN KEY (question_id) REFERENCES Question(question_id)
        ON DELETE CASCADE ON UPDATE CASCADE,      -- 외래 키 제약 조건
    FOREIGN KEY (user_id) REFERENCES User(user_id)
        ON DELETE CASCADE ON UPDATE CASCADE       -- 외래 키 제약 조건
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 답변 데이터 삽입
INSERT INTO Answer (question_id, user_id, content) VALUES
(1, 2, 'Use ice magic and dodge its fire breath. Timing is key!'),
(1, 3, 'Try equipping the Flame Resistant Armor set. It helps a lot.'),
(2, 4, 'The Arcane Robes and the Staff of Wisdom are great for PvE.'),
(3, 1, 'Grinding in the Goblin Forest area is the fastest way to level up.'),
(4, 5, 'Focus on high defense gear and skills that mitigate damage.'),
(5, 3, 'Stick with your team and communicate well during battles.');

-- 공략 테이블
CREATE TABLE IF NOT EXISTS Guide (
    guide_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    category_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    views INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
) CHARACTER SET utf8;

INSERT INTO Guide (category_id, user_id, title, content)
VALUES
    (1, 1, 'Dragon Boss Guide', 'Step 1: Prepare fire resistance gear. Step 2: Bring health potions...'),
    (1, 2, 'Wizard PvP Guide', 'Focus on controlling the battlefield with ice magic.'),
    (1, 3, 'Efficient Leveling Guide', 'Use double XP scrolls and grind in area X.'),
    (2, 4, 'Tank Raid Guide', 'Your main role is to soak up damage and keep aggro.'),
    (2, 5, 'Multiplayer Strategies', 'Communicate with your team and focus on objectives.'),
    (3, 6, 'Potion Crafting Guide', 'Collect materials from area Y and follow recipe Z.'),
    (3, 7, 'Mount Speed Guide', 'Mounts can be upgraded using item A from shop B.'),
    (4, 8, 'Dungeon Trap Guide', 'Watch for pressure plates and avoid dark tiles.'),
    (4, 9, 'Guild War Tactics', 'Defend your base and launch surprise attacks.'),
    (5, 10, 'Weapon Upgrade Guide', 'Farm materials from raid bosses and use forge X.'),
    (5, 11, 'Rare Item Farming', 'Farm area Y during nighttime for better drop rates.'),
    (6, 12, 'Event Reward Tips', 'Complete daily tasks and save tokens for rare items.'),
    (6, 13, 'PvE Build Optimization', 'Focus on critical chance and damage for high DPS.'),
    (7, 14, 'Achievement Hunting', 'Explore all areas and complete side quests.'),
    (7, 15, 'Guild Management Tips', 'Recruit active players and focus on teamwork.'),
    (8, 16, 'XP Boost Strategies', 'Participate in daily challenges and events.'),
    (8, 17, 'PvP Strategies for Rogues', 'Focus on burst damage and stealth for surprise attacks.'),
    (9, 18, 'Combat Rotation Guide', 'Optimize your damage by following this skill order.'),
    (9, 19, 'Artifact Farming Guide', 'Farm artifact fragments from area Z.'),
    (10, 20, 'Survival Tips', 'Always carry healing items and stay aware of your surroundings.');

-- 뉴스 테이블 생성
CREATE TABLE IF NOT EXISTS News (
    news_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    views INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    image_path VARCHAR(255)
) CHARACTER SET utf8;

-- 뉴스 데이터 삽입
INSERT INTO News (title, content, image_path)
VALUES
    ('New Expansion Released!', 'The latest expansion introduces new maps, bosses, and loot.', '/images/gameNews.jpg'),
    ('Patch Notes Update', 'Patch 1.23 brings balance changes and bug fixes.', '/images/gameNews2.jpg'),
    ('Double XP Weekend', 'Players can enjoy double XP from June 10 to June 12.', '/images/gameNews3.jpg'),
    ('PvP Tournament Announced', 'The annual PvP tournament will start on July 15.', '/images/gameNews4.jpg'),
    ('New Raid Unlocked', 'A challenging new raid is now available for high-level players.', '/images/gameNews.jpg'),
    ('Game Reaches 1M Players', 'The game has reached 1 million active players worldwide.', '/images/gameNews2.jpg'),
    ('Exclusive Mount Giveaway', 'Log in during the event to claim an exclusive mount.', '/images/gameNews3.jpg'),
    ('Developer Q&A', 'Developers will host a live Q&A session on June 20.', '/images/gameNews4.jpg'),
    ('Summer Event Begins', 'The summer event includes quests, rewards, and a new boss.', '/images/gameNews.jpg'),
    ('Leaderboard Reset', 'The season leaderboard has been reset for competitive modes.', '/images/gameNews2.jpg'),
    ('Server Maintenance Scheduled', 'Servers will undergo maintenance on June 18.', '/images/gameNews3.jpg'),
    ('New Class Introduced', 'The new Bard class is now available for all players.', '/images/gameNews4.jpg'),
    ('Bug Bounty Program Launched', 'Report bugs and earn in-game rewards.', '/images/gameNews.jpg'),
    ('Guild Wars Season 3', 'Season 3 of Guild Wars starts this month.', '/images/gameNews2.jpg'),
    ('Rare Loot Drop Rate Increased', 'Enjoy higher drop rates for rare items this weekend.', '/images/gameNews3.jpg'),
    ('Community Art Contest', 'Submit your art for a chance to win prizes.', '/images/gameNews4.jpg'),
    ('Game Anniversary Event', 'Celebrate the game\'s 2nd anniversary with special rewards.', '/images/gameNews.jpg'),
    ('Player Spotlight', 'Meet this month\'s featured player: DragonSlayer99.', '/images/gameNews2.jpg'),
    ('Guild Recruitment Week', 'Find the perfect guild during recruitment week.', '/images/gameNews3.jpg'),
    ('Exclusive Discount Event', 'Save big on in-game purchases this week.', '/images/gameNews4.jpg'),
    ('Winter Festival Announced', 'Celebrate the season with winter-themed events and rewards.', '/images/gameNews.jpg'),
    ('Legendary Weapon Crafting Guide', 'A new guide to help players craft legendary weapons.', '/images/gameNews2.jpg'),
    ('Weekly Dungeon Challenge', 'Complete the weekly dungeon challenge for exclusive loot.', '/images/gameNews3.jpg'),
    ('Upcoming Balance Patch Preview', 'Developers preview the changes in the upcoming balance patch.', '/images/gameNews4.jpg');

-- 게임 카테고리 테이블
CREATE TABLE IF NOT EXISTS Game_Category (
    category_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL
) CHARACTER SET utf8;

-- 게임 카테고리 초기 데이터 삽입
INSERT INTO Game_Category (title)
VALUES
    ('RPG'), -- Role-Playing Game
    ('FPS'), -- First-Person Shooter
    ('MMORPG'), -- Massively Multiplayer Online RPG
    ('Action'), -- Action Games
    ('Adventure'), -- Adventure Games
    ('Strategy'), -- Strategy Games
    ('Simulation'), -- Simulation Games
    ('Puzzle'), -- Puzzle Games
    ('Sports'), -- Sports Games
    ('Racing'), -- Racing Games
    ('Horror'), -- Horror Games
    ('Platformer'), -- Platformer Games
    ('Fighting'), -- Fighting Games
    ('Casual'), -- Casual Games
    ('Card'), -- Card Games
    ('MOBA'), -- Multiplayer Online Battle Arena
    ('Survival'), -- Survival Games
    ('Battle Royale'), -- Battle Royale Games
    ('Educational'), -- Educational Games
    ('Sandbox'); -- Sandbox Games

-- 공략 댓글 테이블
CREATE TABLE Guide_Comments (
    comment_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    guide_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- 뉴스 댓글 테이블
CREATE TABLE News_Comments (
    comment_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    news_id BIGINT NOT NULL,
    author VARCHAR(100) NOT NULL, -- 작성자 이름 필드 추가
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO Guide_Comments (guide_id, user_id, content)
VALUES
(1, 11, '정말 유익한 공략이네요! 감사합니다.'),
(1, 12, '공략 덕분에 클리어했습니다.'),
(2, 13, '잘못된 정보가 있는 것 같아요. 수정 부탁드립니다.'),
(3, 14, '다음 업데이트 때 새로운 공략도 부탁드려요!');

INSERT INTO News_Comments (news_id, author, content)
VALUES
(1, 'player_one', '이 게임 업데이트 너무 기대됩니다!'),
(1, 'game_fan99', '패치 내용이 정말 마음에 듭니다.'),
(2, 'critic_john', '이 뉴스는 오래된 것 같은데요?'),
(3, 'gamer_girl', '다른 소식도 업데이트 부탁드려요!');
