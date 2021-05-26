-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 05, 2019 lúc 09:52 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlfilm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) DEFAULT NULL,
  `password` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('thientrungvo19', 'r5t6y7u8i9'),
('congnam', 'nam4101999');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `IDCOMMENT` int(11) NOT NULL,
  `NAME` int(11) NOT NULL,
  `PHIMCOMMENT` int(11) NOT NULL,
  `NOIDUNG` varchar(1000) NOT NULL,
  `TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`IDCOMMENT`, `NAME`, `PHIMCOMMENT`, `NOIDUNG`, `TIME`) VALUES
(1, 3, 3, ' VFIS – Vietnam Finland International School ]\r\nNghe đến VFiS đã lâu, vậy có ai biết bên trong ngôi trường “siêu xịn’ này có gì không nhỉ???\r\nTọa lạc tại khuôn viên trường Đại Học Tôn Đức Thắng với một môi trường học tập đạt chuẩn quốc tế cùng với không gian học tập mở, hệ thống phòng học vô cùng hiện đại cùng với vô vàn tỉ tỉ thứ khác nữa.\r\nBật mí cho các bạn một thông tin siêu hot đây, đó chính là VFiS sẽ mở cửa cho khách tham quan vào ngày 20/4 sắp tới đó', '2019-04-03 00:00:00'),
(2, 9, 3, 'PHIM HAY QUA', '2019-04-03 00:00:00'),
(4, 3, 21, 'Theo ghi nhận của PV Thanh Niên tại nhiều khu chợ lớn nhỏ ở TP.HCM, nhiều tiểu thương ngán ngẩm cho biết, giá xăng dầu, điện đồng loạt tăng khiến họ lâm vào tình trạng khá bi đát: nếu không tăng giá các sản phẩm mình bán thì cũng khó lời, mà tăng giá đột ngột thì mất hẳn một lượng khách vì ai cũng đang thắt chặt chi tiêu hàng ngày (trong đó có tiền đi chợ).', '2019-04-03 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `film`
--

CREATE TABLE `film` (
  `IDFILM` int(11) NOT NULL,
  `TENFILM` text NOT NULL,
  `HINH` text NOT NULL,
  `DIENVIEN` text NOT NULL,
  `THONGTIN` text NOT NULL,
  `THELOAI` int(11) NOT NULL,
  `THOILUONG` time NOT NULL,
  `NAMSX` year(4) NOT NULL,
  `SORATING` float NOT NULL,
  `QUOCGIA` int(11) NOT NULL,
  `DAODIEN` text NOT NULL,
  `LINKFILM` text NOT NULL,
  `LINKTRAILER` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `film`
--

INSERT INTO `film` (`IDFILM`, `TENFILM`, `HINH`, `DIENVIEN`, `THONGTIN`, `THELOAI`, `THOILUONG`, `NAMSX`, `SORATING`, `QUOCGIA`, `DAODIEN`, `LINKFILM`, `LINKTRAILER`) VALUES
(1, 'Infinity War', 'images/capnhat/2.jpg', 'Robert Downey Jr, Chris Hemsworth, Chris Evans, Mark Ruffalo, Benedict Cumberbatch...', 'Sau chuyến hành trình độc nhất vô nhị không ngừng mở rộng và phát triển vụ trũ điện ảnh Marvel, bộ phim Avengers: Cuộc Chiến Vô Cực sẽ mang đến màn ảnh trận chiến cuối cùng khốc liệt nhất mọi thời đại. Biệt đội Avengers và các đồng minh siêu anh hùng của họ phải chấp nhận hy sinh tất cả để có thể chống lại kẻ thù hùng mạnh Thanos trước tham vọng hủy diệt toàn bộ vũ trụ của hắn', 1, '02:48:33', 2018, 5, 2, 'Anthony Russo, Joe Russo', 'video/1.mp4', 'https://www.youtube.com/embed/6ZfuNTqbHE8'),
(2, 'Đế Vương Atlantis', 'images/capnhat/4.jpg', 'Jason Momoa, Amber Heard, Nicole Kidman.....', 'Sau những sự kiện trong Justice League, Arthur Curry / Aquaman trở về biển cả và bắt đầu đảm nhận quyền thừa kế vương quốc Atlantis dưới sự cố vấn của công chúa Mera. Thế nhưng, đế chế huyền thoại bao năm ẩn mình dưới lòng biển sâu Atlantics sắp phải dậy sóng khi Orm quyết tâm thu phục 7 chủng tộc nơi đáy đại dương để tiêu diệt toàn bộ sự sống trên mặt đất.\r\nGiữa lúc biển xanh cuộn trào những đợt sóng dữ dội nhất Aquaman sẽ đương đầu với mọi việc như thế nào để bảo vệ quê hương và thế giới?', 1, '02:38:33', 2018, 5, 2, 'James Wan, ', 'video/2.mp4', 'https://www.youtube.com/embed/9Yam5B_iasY'),
(3, 'Endgame', 'images/capnhat/1.jpg', 'Robert Downey Jr, Chris Hemsworth, Chris Evans, Mark Ruffalo, Benedict Cumberbatch...', 'Avengers phần 4 sẽ là bộ phim cuối cùng có sự góp mặt của một số siêu anh hùng đời đầu của đội Avengers, điển hình là Steve Rogers/Captain America. Ngoài ra, cuối đoạn teaser còn có sự xuất hiện của Ant Man Scott Lang, có thể là Scott đã thoát được khỏi Lượng tử giới và trở về để cùng mọi người đánh bại Thanos chăng?', 1, '03:00:00', 2019, 5, 2, 'Anthony Russo, Joe Russo', 'video/3.mp4', 'https://www.youtube.com/embed/TcMBFSGVi1c'),
(4, 'The Avengers', 'images/capnhat/6.jpg', 'Robert Downey Jr, Chris Hemsworth, Chris Evans, Mark Ruffalo, Benedict Cumberbatch...', 'Marvel’s The Avengers là bộ phim giả tưởng kể về một nhóm siêu anh hùng với những khả năng đặc biệt, họ bao gồm: Người Sắt, Thor, Captain America, và Người Khổng Lồ được gọi chung với cái tên SHIELD. Mục đích của SHIELD là nhằm bảo vệ Trái đất khỏi âm mưu hủy hoại của những thế lực xấu từ ngoài địa cầu mà kẻ cầm đầu là Loki. Marvel’s The Avengers Là một trong những phim được mong đợi nhất hè 2012, phim quy tụ dàn diễn viên đẹp với những cảnh quay sống động đã mang về cho nhà sản xuất hơn 1 tỷ USD. Nếu bạn đã từng là Fan của những siêu phẩm như: Spider-Man, Batman thì Marvel’s The Avengers quả là một bộ phim khó có thể bỏ qua', 1, '02:38:33', 2012, 4, 2, 'Joss Whedon', 'video/4.mp4', 'https://www.youtube.com/embed/Bx6hLQWVQDk'),
(5, 'Avengers 2', 'images/capnhat/5.jpg', 'Robert Downey Jr, Chris Hemsworth, Chris Evans, Mark Ruffalo, Benedict Cumberbatch...', 'Trong phần này, biệt đội siêu anh hùng của chúng ta sẽ phải chiến đấu với binh đoàn robot được biết đến với cái tên là Ultron.', 1, '02:38:33', 2015, 4, 2, 'Joss Whedon, ', 'video/5.mp4', 'https://www.youtube.com/embed/FiTHHZ8A3SU'),
(6, 'Captain Marvel ', 'images/capnhat/9.jpg', 'Brie Larson, Samuel L. Jackson, Jude Law....', 'Lấy bối cảnh những năm 90s, Captain Marvel là một cuộc phiêu lưu hoàn toàn mới đến với một thời kỳ chưa từng xuất hiện trong vũ trụ điện ảnh Marvel. Bộ phim kể về con đường trở thành siêu anh hùng mạnh mẽ nhất vũ trụ của Carol Danvers. Bên cạnh đó, trận chiến ảnh hưởng đến toàn vũ trụ giữa tộc Kree và tộc Skrull đã lan đến Trái Đất, liệu Danvers và các đồng minh có thể ngăn chặn binh đoàn Skrull cũng như các thảm họa tương lai?', 1, '02:05:00', 2019, 3, 2, 'Anna Boden, Ryan Fleck', 'video/6.mp4', 'https://www.youtube.com/embed/0LHxvxdRnYc'),
(7, 'Iron man', 'images/capnhat/7.jpg', 'Robert Downey Jr, Gwyneth Paltrow, Jon Favreau...', 'Nhận ra sự thật phũ phàng rằng, những vũ khí do mình chế tạo đang quay ngược lại tấn công chính mình, Tony bắt tay chế tạo bộ giáp công nghệ cao. Tẩu thoát khỏi nơi giam cầm, Tony trở thành đại diện công lý dưới biệt danh Người sắt. Trong khi đó, người đồng sự trong tập đoàn Stark âm mưu lật đổ Tony. \r\n\r\nBộ phim mở ra câu chuyện trong tương lai về nhóm siêu anh hùng Avenger khi tổ chức bí mật SHIELD bắt đầu lộ diện.', 1, '02:10:00', 2008, 4, 2, 'Jon Favreau', 'video/7.mp4', 'https://www.youtube.com/embed/8hYlB38asDY'),
(8, 'Iron Man 3', 'images/capnhat/8.jpg', 'Robert Downey Jr, Chris Hemsworth...', 'Từ sau những sự kiện và những trận chiến đầy ám ảnh trong The Avengers, Tony Stark quay về ở ẩn trong căn biệt thự sang trọng của mình, tạm thời chờ đợi trong tư cách một tỷ phú giàu có được yêu mến và gác danh phận siêu anh hùng sang một bên.\r\n\r\nTuy nhiên, những hiểm họa mới lại tiếp tục xuất hiện dưới bóng ma bao trùm của một quái nhân, đồng thời cũng là một thiên tài về công nghệ - The Mandarin. Người bạn thân trong lực lượng quân đội Hoa Kỳ của Tony - James Rhodes cần tới sự giúp đỡ của anh và những bộ giáp siêu việt.', 1, '02:30:00', 2013, 4, 2, 'Shane Black', 'video/8.mp4', 'https://www.youtube.com/embed/Ke1Y3P9D0Bc'),
(9, 'Captain America 3', 'images/capnhat/12.jpg', 'Robert Downey Jr, Chris Hemsworth, Chris Evans', 'Captain America: Civil War là câu chuyện theo sau sự kiện Avengers: Age Of Ultron, các liên minh chính phủ trên toàn thế giới thông qua một hiệp ước được thiết lập để điều chỉnh hoạt động của tất cả siêu anh hùng. Điều này gây ra sự phân cực trong nội bộ nhóm Avengers, tạo nên hai phe gồm Iron Man và Captain America, gây ra một trận chiến sử thi giữa những người đồng đội.', 1, '03:00:00', 2016, 5, 2, 'Anthony Russo, Joe Russo', 'video/9.mp4', 'https://www.youtube.com/embed/dKrVegVI0Us'),
(14, 'How to train your Dragon 3', 'images/capnhat/16.jpg', ' Jay Baruchel, America Ferrera, Cate Blanchett...', 'Sau khi Hiccup tạo ra một thế giới hòa bình cho loài rồng, Răng Sún phát hiện ra một người bạn mới đầy bí hiểm. Lúc này Hiccup đã trở thành người lãnh đạo của cả làng gánh trên vai trọng trách gìn giữ sự an nguy cho mọi người. Vì vậy, cậu không thể mãi bị cuốn theo những cuộc phiêu lưu bất tận với Răng Sún. Và khi nguy hiểm ập đến ngôi làng, cả Hiccup và Răng Sún đều đã đứng lên, anh dũng bảo vệ giống loài của mình.', 5, '01:40:00', 2019, 5, 2, 'Dean Deblois', 'video/10.mp4', 'https://www.youtube.com/embed/Siqw8k05D4g'),
(15, 'How to train your Dragon 2', 'images/capnhat/18.jpg', 'Jay Baruchel, Cate Blanchett, Gerard Butler...', 'Bí Kíp Luyện Rồng 2 - How To Train Your Dragon 2 là phần thứ hai ly kỳ của bộ ba tác phẩm sử thi, bộ phim tái hiện lại lại thế giới giả tưởng của Hiccup (Baruchel) và Toothless (Răng Sún) năm năm sau đó. Toothless (Răng Sún) và Hiccup sẽ trở lại cho cuộc phiêu lưu lớn hơn, và cũng không thiếu những tràn cười cùng những trận đánh đầy kịch tính. \r\n\r\nCuộc phiêu lưu mới dẫn họ đến việc phát hiện ra một hang đá bí mật mà ở đó có hàng trăm con rồng hoang dã mới và bí ẩn Dragon Rider. Và rồi họ bị cuốn vào một cuộc chiến để bảo vệ hòa bình. Hiccup (Baruchel) và Toothless (Răng Sún) phải đoàn kết đứng lên cho những gì họ tin tưởng và phải thừa nhận rằng chỉ có cùng nhau họ có sức mạnh để thay đổi tương lai của cả hai.', 5, '01:42:00', 2014, 3, 2, 'Dean Deblois', 'video/11.mp4', 'https://www.youtube.com/embed/2BP38770KNo'),
(16, 'How to Train Your Dragon', 'images/capnhat/17.jpg', ' Jay Baruchel, Gerard Butler, Craig Ferguson...', 'Bộ phim lấy bối cảnh là một thế giới thần thoại của người Viking và loài rồng. Câu chuyện xoay quanh cậu bé Hiccup, sống tại đảo Berk. Khi Hiccup được tham gia vào khóa huấn luyện rồng với những cậu bé cùng trang lứa, cậu coi đây là cơ hội để chứng minh rằng mình đã trưởng thành và là một chiến binh thật sự. Cậu đã giải thoát và kết bạn với một chú rồng và đặt chú tên Toothless. Mối quan hệ này đã thay đổi hoàn toàn cuộc sống của cậu khi cậu đấu tranh để thuyết phục cả bộ tộc mình rằng việc giết rồng là không cần thiết…', 5, '01:29:00', 2010, 4, 2, 'Dean Deblois, Chris Sanders', 'video/1.mp4', 'https://www.youtube.com/embed/oKiYuIsPxYk'),
(17, 'Tháng năm rực rỡ', 'images/capnhat/19.jpg', 'Jun Vũ, Hồng Ánh, Thanh Hằng, Khổng Tú Quỳnh...', 'Tháng năm rực rỡ là câu chuyện về tình bạn, về thời tuổi trẻ cuồng nhiệt của một nhóm bạn gái thời trung học. Bộ phim là hành trình đi tìm lại những ký ức thanh xuân của Hiểu Phương ', 4, '02:00:00', 2018, 4, 1, 'Nguyễn Quang Dũng', 'video/12.mp4', 'https://www.youtube.com/embed/Q6jw7x0cVv8'),
(18, 'Siêu Sao Siêu Ngố  ', 'images/capnhat/20.jpg', 'Trường Giang, Sam, Đức Thịnh...', 'Phim Hài Tết, Hài Hước: Siêu Sao Siêu Ngố (2018) full trọn bộ vietsub, thuyết minh 1 giờ 27 phút - Full HD Siêu Sao Siêu Ngố là bộ phim hài – tình cảm có nội dung xoay quanh nhân vật chính là ngôi sao điện ảnh Thế Sơn. Mặc dù sở hữu sự nghiệp thành công hàng đầu và có cuộc sống sang chảnh bậc nhất khiến vạn người mê, nhưng Thế Sơn lại chẳng thể tự do yêu đương hay làm những gì mà mình yêu thích. Anh luôn bị giám sát và phải chịu nhiều chi phối từ công ty quản lý, nhà đầu tư, vấn đề tiền bạc… đặc biệt là Tony Dũng', 2, '01:27:00', 2018, 4, 1, 'Đức Thịnh', 'video/13.mp4', 'https://www.youtube.com/embed/DULpxY1Vspw'),
(19, 'Hồn PaPa', 'images/capnhat/21.jpg', 'Thái Hòa, Kaity Nguyễn, Hồng Vân', 'Hồn Papa, Da Con Gái kể về câu chuyện của hai cha con Hải (Thái Hòa) và Châu (Kaity Nguyễn). Mặc dù là người một nhà nhưng mối quan hệ của họ ngày càng trở nên xa cách vì nếu như Châu là nữ sinh học giỏi nổi tiếng nhất trường, thì Hải lại là người cha ham chơi chỉ biết dựa dẫm vào con gái. \r\nĐể có thể khắc phục tình trạng này, linh hồn người mẹ đã thực hiện một lời nguyền, khiến hai cha con bị hoán đổi với nhau trong vòng 7 ngày. \r\n', 4, '01:29:00', 2018, 3, 1, 'Ken Ochiai', 'video/14.mp4', 'https://www.youtube.com/embed/IKzoLdGuHyE'),
(20, 'Lật Mặt 3', 'images/capnhat/22.jpg', 'NeNe, Song Luân, Huy Khánh, Kiều Minh Tuấn...', 'NeNe, Song Luân, Huy Khánh, Kiều Minh Tuấn\r\n-	Thời Lượng: 90 phút\r\n-	Số rating: 5\r\n-	Năm sản xuất: 2018\r\n-	Mô tả: Ba Chàng Khuyết phim xoay quanh ba chàng trai khuyết tật là Tâm (Song Luân), Đức (Huy Khánh), và Lộc (Kiều Minh Tuấn). Họ đều bị gia đình bỏ rơi từ khi còn rất nhỏ, cùng nhau lớn lên trong một cô nhi viện. Khi trưởng thành, bộ ba cùng nhau xây dựng nên quán chuối nướng nổi tiếng, rồi tham gia một chương trình tìm kiếm người thân trên sóng truyền hình. Câu chuyện của họ khiến khán giả vô cùng xúc động, và trở thành hiện tượng rộng khắp trên mạng xã hội.', 4, '01:30:00', 2018, 5, 1, 'Lý Hải', 'video/15.mp4', 'https://www.youtube.com/embed/JcKMQQLycpQ'),
(21, 'Chàng vợ của em', 'images/capnhat/23.jpg', 'Thái Hòa, Hứa Vĩ Văn, Vân Trang', 'Sau khi liên tục gặp phải rắc rối với người giúp việc, Mai – một cô nàng công sở bận rộn cảm thấy vô cùng may mắn khi tìm được Ngọc – người hứa sẽ chăm sóc nhà cửa và cún cưng của cô một cách tốt nhất. Từ ngày có Ngọc, Mai luôn cảm thấy hạnh phúc và vui vẻ khi trở về nhà, cô tưởng như đã tìm được một người vợ lý tưởng mà mình ao ước bấy lâu. Nhưng Mai không hề biết rằng người giúp việc hoàn hảo mà cô luôn tin tưởng lại chính là Hùng – anh trai Ngọc – một gã khó ưa mà Mai thường chạm mặt ở công viên', 4, '02:00:00', 2018, 5, 1, 'Charlie Nguyễn', 'video/16.mp4', 'https://www.youtube.com/embed/Or3SqGR_Qg4'),
(22, 'Người Bất Tử', 'images/capnhat/24.jpg', 'Quách Ngọc Ngoan, Jun Vũ...', 'Người Bất Tử là tác phẩm điện ảnh thứ 2 của đạo diễn Victor Vũ trong năm 2018. Nội dung phim xoay quanh cuộc đời đầy biến cố của một người đàn ông.Những giấc mơ khó hiểu dẫn dụ cô gái An ở thời hiện đại tìm đến hang động kì bí và phát hiện ra bí mật khủng khiếp của Hùng - một người đàn ông đã sống qua 3 thế kỷ. Làm thế nào để trở thành người bất tử? Cuộc đời thăng trầm đầy tham vọng, thù hận và ma thuật của Hùng dần được kể lại…', 3, '02:10:00', 2018, 5, 1, 'victor Vũ', 'video/17.mp4', 'https://www.youtube.com/embed/6VEVPtFDN_U'),
(23, '798 Mười', 'images/capnhat/26.jpg', 'Thu Trang, Kiều Minh Tuấn, Dustin Nguyễn, Hồng Sơn...', 'Bộ phim kể câu chuyện về anh Tám bán bánh tiêu bị mất người yêu vào tay một trùm giang hồ thế lực, cùng đường nên phải lôi người anh họ tên Mười vào cuộc. Mười bị mù, ở quê lần đầu lên thành phố cùng với con vịt cưng, nhưng anh lại là một cao thủ ẩn danh với môn phái Bành Công kỳ dị. Kể từ đó, bắt đầu một hành trình ly kỳ, quyết liệt, với những pha võ thuật lạ mắt, sôi động, màn drift xe trứ danh do anh mù lái và câu chuyện đủ mọi sắc thái tình cảm, từ âm mưu chiếm đoạt đến yêu thương, tha thứ.', 2, '01:44:00', 2018, 4, 1, 'Dustin Nguyễn', 'video/18.mp4', 'https://www.youtube.com/embed/DUjYOkfddbs'),
(24, 'Nhắm mắt thấy mùa hè', 'images/capnhat/25.jpg', 'Phương Anh Đào, Takafumi Akutsu...', 'Nhắm Mắt Thấy Mùa hè là hành trình tâm lý của hai nhân vật, kể về tình yêu của hai bạn trẻ người Nhật và Việt khác biệt về ngôn ngữ, văn hoá. Đan xen vào đó là những tình cảm gia đình, cha con. Những con người có xuất phát điểm khác nhau nhưng hội tụ cùng nhau tại thị trấn Higashikawa và viết lên câu chuyện với thông điệp mang đậm hơi thở cuộc sống...', 4, '01:30:00', 2018, 3, 1, 'Cao Thúy Nhi', 'video/19.mp4', 'https://www.youtube.com/embed/tlNtE3IW6bE'),
(25, 'Về Quê Ăn Tết', 'images/capnhat/27.jpg', 'puka, jun Phạm...', 'Về Quê Ăn Tết là bộ phim điện ảnh với mong muốn khắc hoạ nỗi niềm của những con người xa xứ trong những ngày cuối năm. Jun Phạm sẽ vào vai chàng lơ xe đôn hậu, chân chất, luôn luôn khao khát một cái Tết đậm đà ý nghĩa trong chuyến hành trình về quê từ Sài Gòn đến Cà Mau. Còn Ngô Thanh Vân là một cô nàng ngổ ngáo với diện mạo độc đáo từ trước tới giờ. Một câu chuyện nhẹ nhàng lấy bối cảnh trên chuyến xe về quê đón Tết.', 2, '01:30:00', 2018, 4, 1, 'Nguyễn Hoàng Anh', 'video/20.mp4', 'https://www.youtube.com/embed/y8VCeV_iY6w'),
(26, 'Đích Tôn Độc Đắc', 'images/capnhat/28.jpg', 'Hoài Linh, Lê Lộc, Bạch Công Khanh...', 'Phim Hài Tết, Hài Hước: Đích Tôn Độc Đắc (2018) full trọn bộ vietsub, thuyết minh 1 giờ 30 phút - Full HD \r\n-	Đích Tôn Độc Đắc là một câu chuyện xoay quanh ước mơ sẽ được nhìn thấy đứa chắt đích tôn, người sẽ thừa hưởng sản nghiệp của gia đình của ông Hữu Phát. Nhưng ước mơ đó của ông dường như vẫn còn quá xa vời khi cháu nội Hữu Phước chưa thể cầu hôn được Phương Thúy- người bạn gái lâu năm của anh.\r\n', 2, '01:40:00', 2018, 5, 1, 'Trần Ngọc Giàu', 'video/21.mp4', 'https://www.youtube.com/embed/UyIRYSGmRnM'),
(27, 'Tam sinh Tam Thế', 'images/capnhat/29.jpg', 'Lưu Diệc Phi, Dương Dương...', 'Tam Sinh Tam Thế: Thập Lý Đào Hoa kể về chuyện tình cảm động giữa Thượng thần Bạch Thiển (Lưu Diệc Phi) và Thái tử Cửu Trùng Thiên Dạ Hoa (Dương Dương). Là con gái duy nhất của Bạch Đế Hồ Quân, Bạch Thiển từ nhỏ đã cải nam trang bái sư học nghệ, trải qua vô vàn kiếp nạn mới có thể trở thành Thượng thần. \r\nTrong suốt ba kiếp người đầy rẫy sóng gió, khó khăn ấy luôn tồn tại hình bóng của Dạ Hoa, người sẵn sàng trở thành đôi mắt, là tất cả của Bạch Thiển. Thế nhưng giữa muôn trùng gian kế, trắc trở, liệu vị hôn phu kém mình chín vạn tuổi của Bạch Thiển có thể cùng nàng giữ vẹn nguyên lời thề nguyện bên nhau ba đời ba kiếp.\r\n', 3, '01:47:00', 2017, 4, 3, 'Trịnh Tiểu Đinh', 'video/22.mp4', 'https://www.youtube.com/embed/AGuM6gv50_o'),
(28, 'Tân Vua Hài Kịch', 'images/capnhat/30.jpg', 'Vương Bảo Cường, David Torok ...', 'Vì đam mê làm diễn viên, vì luôn tin tưởng rằng nếu không ngừng cố gắng thì mình sẽ thành công, Tiểu Mộng dù đã mất mười mấy năm làm diễn viên quần chúng, dù bạn bè người thân liên tục can ngăn, dù đạo diễn qùy lạy xin cô đừng đi đóng phim nữa, cô vẫn luôn kiên trì theo đuổi nghiệp diễn. Tuy nhiên, lòng kiên trì bền bỉ sắt đá đó không ngờ cũng có ngày lung lay khi Tiểu Mộng phát hiện bị bạn trai lừa gạt, cuỗm đi số tiền mà cô đã chắt chiu dành dụm suốt mười mấy năm làm quần chúng. Buồn bã và nản chí, Tiểu Mộng dần từ bỏ ước mơ của mình…', 2, '01:30:00', 2019, 4, 3, 'Châu Tinh Trì', 'video/23.mp4', 'https://www.youtube.com/embed/ex4Y2iPBD4U'),
(29, 'Đại Chiến Âm Dương', 'images/capnhat/31.jpg', 'Thành Long, Peng Lin...', 'Bồ Tùng Linh (Thành Long) trong Đại chiến âm dương được xem như một bậc thánh nhân với cây bút thần kỳ. Ông đã thu phục rất nhiều yêu quái nguy hiểm, rồi nhốt chúng vào cuốn sách của cõi Âm. Khi bước sang tuổi trung niên, Bồ Tùng Linh quyết định ẩn mình, rồi viết thành sách những câu chuyện quá khứ của bản thân và mang chúng đi bán cho người đời. Tuy nhiên, khi mọi chuyện tưởng như đang yên bình, ngôi làng nơi họ Bồ đang sinh sống bỗng nhiên xuất hiện hai con yêu ma hùng mạnh. Mọi chuyện càng trở nên rắc rối khi một trong hai ác quỷ - Nhiếp Tiểu Tình (Chung Sở Hy) - lại có mối liên hệ đặc biệt với hiệp khách trừ quỷ Ninh Thái Thần (Nguyễn Kinh Thiên).', 3, '01:50:00', 2019, 3, 3, 'Kuo Liu', 'video/23.mp4', 'https://www.youtube.com/embed/w6k6zHM15fg'),
(30, 'Trùng Cốc Vân Nam', 'images/capnhat/32.jpg', 'Hang Cai, Xuan Gu...', 'Để tự cứu mình khỏi lời nguyền của Động Quỷ Tinh Tuyệt, Hồ Bát Nhất cùng Tuyền béo và Shirley Dương lên đường đến Trùng cốc, Vân Nam để tìm Mộc Trần Châu ẩn trong mộ Hiến Vương, vị vua bí hiểm, đầy phép phù thủy của nước Điền cổ hai ngàn năm trước. Đến vùng núi Già Long gần Trùng cốc, trước mắt ba Mô kim Hiệu úy, một loạt chuyện kỳ quái đã xảy ra: những nô lệ bị thành xác khô bởi tà thuật cả ngàn năm trước, bọn cá ăn thịt người hung hãn, con sâu khổng lồ bất tử trong bộ giáp vảy rồng... Và chuyến đi lần này, họ không chỉ gặp những cạm bẫy âm hiểm hay đám cương thi trong mộ cổ, mà còn có thứ đáng sợ hơn gấp bội phần ...', 2, '01:40:00', 2019, 4, 3, 'Xing Fei', 'video/24.mp4', 'https://www.youtube.com/embed/6_OtjTSwvcE'),
(31, 'Vô Ảnh', 'images/capnhat/33.jpg', 'Đặng Siêu, Tôn Lệ...', 'Shadow được Trương Nghệ Mưu lấy bối cảnh dưới thời kỳ Tam Quốc. Đại Đô Đốc Phái quốc Tử Ngu (Đặng Siêu) trong một lần chiến đấu đã bị thương nặng và phải ẩn thân trong bóng tối. Để tiếp tục nhiệm vụ của mình, hắn ta giao phó cho sát thủ có tên Cảnh Châu, biệt hiệu “Ảnh tử”. \r\nTiểu Ngải (Tôn Lệ) vợ của Tử Ngu với sự nhạy cảm của mình, cô dần dần phát hiện ra bí mật của chồng. Không ngờ sau này, Tiểu Ngải lại có tình cảm với thế thân của chồng. Khi Tử Ngu tìm cách kiểm soát Cảnh Châu, Tiểu Ngải cũng có những kế hoạch của riêng mình.\r\n', 1, '01:16:00', 2018, 2, 3, 'Trương Nghệ Mưu', 'video/25.mp4', 'https://www.youtube.com/embed/UDdJRks1aDQ'),
(32, 'Võ Lâm Quái Thú', 'images/capnhat/34.jpg', 'Cheney chen, Châu Đông Vũ...', 'Trong cuộc chiến săn bắt quái thú, Tôn Ngọc Hạc chạm trán nhóm hảo hán chuyên cướp bạc của quan chia cho dân nghèo gồm Chân Kiếm, Hùng Kiều Kiều và Lãnh Băng Băng. Thế nhưng, số bạc chưa bị cướp bỗng không cánh mà bay khiến triều đình phong tỏa khắp nơi để truy bắt. Trong mối nguy trăm bề, nhóm nghĩa hiệp không hề hay biết rằng mình cũng đang bị săn lùng bởi một loài quái thú khát máu trong truyền thuyết.', 1, '01:43:00', 2019, 5, 3, 'Lưu Vĩ Cường', 'video/26.mp4', 'https://www.youtube.com/embed/j-f3R8hRS10'),
(33, 'Điệp vấn ngoại truyện', 'images/capnhat/35.jpg', 'Jin zhang, Dương Tử Quỳnh..', 'Sau trận thua trước Diệp Vấn, Trương Thiên Chí quyết định sống ẩn danh cùng gia đình nhỏ của mình. Tuy nhiên, rắc rối bắt đầu ập tới, khiến Trương Thiên Chí phải bị lôi vào một cuộc đối đầu máu lửa với những kẻ thù đến từ ngoại quốc.', 3, '01:47:00', 2018, 3, 3, 'Woo-Ping Yuen, Yuen Woo-Ping,', 'video/27.mp4', 'https://www.youtube.com/embed/RW8pvwPjvPM'),
(34, 'Người Băng 2', 'images/capnhat/36.jpg', 'Chung Tử Đơn, Huỳnh Thánh Y...', 'NGƯỜI BĂNG 2 (ICEMAN 2) tiếp nối câu chuyện của phần 1 về chuyến phiêu lưu của một Cẩm y vệ đời nhà Minh (Chung Tử Đơn đóng) vào thế giới hiện đại. Câu chuyện bắt đầu khi anh vô tình bị đóng băng trong một trận đánh, cơ thể của được lưu giữ gần 4 thế kỷ. Sau khi bị phát hiện, cơ thể của Người Băng đã được gửi tới Hong Kong để tiến hành nghiên cứu. Tại đây, anh được giải thoát khỏi lớp băng, tái sinh và bắt đầu cuộc sống ở một thế giới hoàn toàn lạ lẫm.', 4, '01:51:00', 2018, 5, 3, 'Wai Man Yip', 'video/28.mp4', 'https://www.youtube.com/embed/ZF34rTRoIKw'),
(35, 'Tìm Thấy Con', 'images/capnhat/37.jpg', 'Mã Y Lợi, Diêu Thần...', 'Phim kể về luật sư Lý Tiệp (Diêu Thần) đang trong quá trình giành quyền nuôi con với chồng cũ nên ra sức làm việc để cho con gái cuộc sống tốt nhất. Vì cuộc sống bận rộn nên cô phải nhờ người giúp việc Tôn Phương (Mã Y Lợi) hỗ trợ. Cô giúp việc hiền lành thương bé gái như con ruột. \r\nBỗng một ngày nọ, Lý Tiệp phát hiện Lý Phương và con gái của mình đã biệt vô âm tín. Cô vô cùng hoảng loạn, tìm kiếm khắp nơi. Trong tình cảnh này, Lý Tiệp bị người nhà lên án là bỏ mặc con cái nên bị cảnh sát nghi ngờ, không giúp đỡ. Mặc dù vậy, cô đã không bỏ cuộc mà dựa vào khả năng của mình để lần tìm manh mối. Trong quá trình lần theo dấu vết con gái, cô mới phát hiện cuộc đời thật, con người thật của người giúp việc Tôn Phương.\r\n', 4, '01:41:00', 2018, 5, 3, 'Lữ Nhạc', 'video/29.mp4', 'https://www.youtube.com/embed/UPUQLxdZpzA'),
(36, 'Hai Kiếp Yêu Tinh', 'images/capnhat/38.jpg', 'Phùng thiệu phong, Lưu Diệc Phi...', 'Viên Soái là 1 nhân viên đô thị bình thường rơi vào tình yêu với một con hồ yêu Bạch Khiên Sở, BOT (Cục quản lý yêu quái) vì ngăn cản người và yêu quái yêu nhau, phái nhân viên lùng bắt hồ yêu Bạch Khiên Sở đã làm trái quy tắc. Viên Soái vì người yêu hồ ly, dũng cảm xông vào yêu giới.', 4, '02:00:00', 2018, 2, 3, 'Yang Xiao', 'video/30.mp4', 'https://www.youtube.com/embed/uGTop17-UtU'),
(37, 'Zombie Đại Hạ Giá', 'images/capnhat/39.jpg', 'Jung jae-young, Kim Nam-Gil', 'Gia đình ông Park vốn dĩ đã kỳ quặc nay còn kỳ quái hơn khi nhận nuôi zombie trong nhà. Trái ngược với nỗi sợ khi phải đối mặt với zombie thì gia đình ông Park đã tận dụng kiếm tiền một cách triệt để từ thành viên mới này. Từ đây nảy sinh những tình huống hài hước khó đỡ cùng chuyện tình đáng yêu giữa Zombie và cô con út của gia đình ông Park.', 2, '01:36:00', 2019, 5, 5, 'Lee Min-Jae', 'video/31.mp4', 'https://www.youtube.com/embed/ZJxBddd3Reg'),
(38, 'Hy Vọng', 'images/capnhat/40.jpg', 'Son Kyung-Gul, Uhm Ji-Won...', 'Phim Hy Vọng - Hope là câu chuyện về bi kịch xảy đến với cô con gái bé nhỏ So-won trong một lần đi học từ trường về nhà. Cha cô bé – Dong-hoon – nhận được điện thoại từ bệnh viện thông báo So-won đang bị chấn thương cả về thể xác lẫn tinh thần. Liệu gia đình của họ có vượt qua được quá khứ và trở về là một mái ấm như ngày xưa.', 4, '01:59:00', 2013, 3, 5, 'Lee Jun-IK', 'video/32.mp4', 'https://www.youtube.com/embed/88Jdlgxy1XY'),
(39, 'Đại Ca Hóa Soái Ca', 'images/capnhat/41.jpg', 'Park Sung-Woong, Jin Young', 'Đại Ca Hóa Soái Ca là câu chuyện hoán đổi linh hồn giữa cậu học sinh trung học Dong-hyun và tay xã hội đen máu mặt Pan-soo. Sau một tai nạn bất ngờ, linh hồn của ông chú trung niên Pan-soo tỉnh lại trong thân hình của Dong-hyun. Với thân phận mới, Pan-soo đã quyết định tìm hiểu nguyên nhân của vụ tráo đổi kỳ lạ này, bắt đầu từ vụ tai nạn khiến Dong-hyun rơi từ trên tầng cao xuống.', 4, '01:56:00', 2019, 4, 5, 'Kang Hyo-Jin', 'video/22.mp4', 'https://www.youtube.com/embed/1KZymbJUSSw'),
(40, 'Ống Kính Độc Đáo', 'images/capnhat/42.jpg', 'Min-Hee Kim, Jin-Young Jung', 'Claire’s Camera xoay quanh hành trình kết thân lạ kỳ của hai nhân vật: Claire (Isabelle Huppert) – một giáo viên lớn tuổi người Pháp nhưng rất yêu nghệ thuật, lặn lội từ Paris sang Cannes để tham dự buổi ra mắt phim của một người bạn; và Man-hee (Kim Min-hee)  một nhân viên tiếp thị phim đến từ Hàn Quốc vừa bị sếp đuổi việc vì cho rằng cô đang dan díu với nhân tình của mình. Từ chỗ không quen biết, Claire vô tình gặp được Man-hee khi đang đi dạo trên bãi biển. Hai người trở thành bạn đồng hạnh của nhau tại Cannes, để rồi liên tục “xoắn” vào nhau bởi những sự trùng hợp hết sức kỳ quặc. ', 2, '01:16:00', 2018, 3, 5, 'Sang-soo Hong', 'video/23.mp4', 'https://www.youtube.com/embed/U4-C5L0TupE'),
(41, 'Cuộc Đàm Phán Sinh Tử', 'images/capnhat/43.jpg', 'Son ye yi, Hyun-Bin, Kim Sang-ho..', 'Ha Chae-youn là cảnh sát giỏi nhất của đội Đàm phán khủng hoảng, cô luôn giữ một cái đầu lạnh trong mọi tình huống. Tuy nhiên cô rơi vào một cú sốc lớn khi một vụ bắt cóc đã kết thúc trong thảm kịch, cô chứng kiến kẻ bắt cóc và con tin bị giết ngay trước mắt mình. Chỉ 10 ngày sau đó, Min Tae-gu , một kẻ buôn bán vũ khí khét tiếng bị cảnh sát truy nã, bắt cóc một phóng viên và một cảnh sát người Hàn và chỉ định Chae-youn là người đàm phán. Tình huống nguy hiểm chưa từng có khiến Chae-youn không thể lùi bước, và sự thật kinh hoàng đằng sau dần được hé lộ', 3, '02:14:00', 2018, 4, 5, 'Lee jong-suk', 'video/24.mp4', 'https://www.youtube.com/embed/dkvBKyrlr7U'),
(42, 'Mãi Bên Cháu', 'images/capnhat/44.jpg', 'Lee Soon-Jae, Jung Ji-Hoon...', 'Một người ông 70 tuổi đã một tay nuôi lớn hai đứa cháu của mình. Ông cố để lại cho các cháu một thứ đặc biệt khi ông biết mình không còn sống được bao lâu nữa.', 4, '01:31:00', 2018, 4, 5, 'Bang Soo-In', 'video/25.mp4', 'https://www.youtube.com/embed/nnrqs-aV_gM'),
(43, 'Chiến Dịch Ngầm', 'images/capnhat/45.jpg', 'Ha Jung-Woo, Lee Sun-Kyun...', 'tảVào ngày diễn ra cuộc bầu cử tổng thống Hoa Kỳ năm 2024, Ahab (Ha Jung-Woo) cùng nhóm lính đánh thuê tinh nhuệ của mình bắt tay vào một nhiệm vụ bí mật của CIA để bắt cóc Bộ trưởng Lực lượng Vũ trang Bắc Triều Tiên trong một hầm ngầm bên dưới Khu phi quân sự Triều Tiên (DMZ). Tuy nhiên, họ bị cuốn vào cuộc chiến chéo khiến căng thẳng leo thang có khả năng gây nên Chiến Tranh Thế Giới thứ 3.', 3, '02:14:00', 2018, 4, 5, 'Kim Byung-woo', 'video/26.mp4', 'https://www.youtube.com/embed/QNFKE2WLgzA'),
(44, 'Train To Busan', 'images/capnhat/46.jpg', ' Gong Yoo,  Jung Yu-Mi,  Ma Dong-Seok...', 'Phim Train To Busan - Chuyến Tàu Sinh Tử lấy bối cảnh đất nước Hàn bị tấn công bởi một loại virus bí ẩn, biến con người thành những xác sống hung hăng, khát máu. Có mặt trên chuyến tàu từ Seoul tới Busan là một người cha cùng con gái, hai vợ chồng chuẩn bị đón đứa con đầu lòng và một số cô cậu học sinh cấp 3. Khi đại dịch xác sống bất ngờ bùng phát, họ không còn cách nào khác ngoài đương đầu với nó để bảo vệ những người thân yêu của mình. Hành trình 453km từ Seoul tới vùng an toàn Busan bỗng trở thành cuộc chiến khốc liệt để sinh tồn.', 3, '01:38:00', 2016, 4, 5, 'Yeon Sang-Ho', 'video/15.mp4', 'https://www.youtube.com/embed/09sMnP1tTdQ'),
(45, 'Thử Thách Thần Chết', 'images/capnhat/47.jpg', 'Jung-Woo Ha, Tae-Hyun Cha, Ji-Hun Ju...', 'Bộ phim xoay quanh hành trình sau cái chết của người lính cứu hỏa tên Ja Hong. Anh ấy tử nạn trong một lần đang thực hiện nhiệm vụ. Và theo như quy luật, Ja Hong phải đi đến gặp Chúa Tể Yeomra – người nắm giữ những linh hồn để nhận phán quyết cho cuộc sống sau cái chết của mình. \r\n\r\nNhưng trước hết, anh phải trải qua thử thách của bảy tầng địa giới đầy cam go trong vòng 49 ngày. Theo sát và hộ tống Ja Hong là ba vệ thần của Chúa Tể Yeomra, họ đầy quyền năng nhưng tuyệt nhiên không được giúp đỡ Ja Hong vì theo Yeomra: “Con người mang đầy tội lỗi!”, và họ xứng đáng nhận những thử thách này!', 3, '02:48:33', 2017, 5, 5, 'Yong-Hwa Kim, Kim Yong-Hwa', 'video/14.mp4', 'https://www.youtube.com/embed/QGS0epfKxmY'),
(46, 'Thử Thách Thần Chết 2', 'images/capnhat/48.jpg', 'Ha Jung-Woo, Lee Sun-Kyun...', 'Thử Thách Thần Chết 2: 49 ngày cuối cùng kể về chàng trai Su Hong đã được chọn là linh hồn thuần khiết thứ 49 cần giúp đỡ, cũng là linh hồn thuần khiết cuối cùng để cả 3 vệ thần hoàn thành sứ mệnh. Sau sứ mệnh này, họ cũng sẽ đầu thai làm kiếp người mới. Tuy nhiên trong cuộc hành trình 49 ngày cuối cùng này, thân phận của 3 vệ thần dần được hé lộ. Mọi thứ bắt đầu gay cấn hơn khi họ dần lấy lại những ký ức bi kịch của kiếp trước thông qua Gia Thần - một vị thần có quyền lực và vai trò không hề nhỏ ở dương thế.', 3, '02:30:00', 2018, 4, 5, 'Kim Yong-Hwa', 'video/16.mp4', 'https://www.youtube.com/embed/Om1uPGXCrGI'),
(47, 'Bão Norda', 'images/capnhat/49.jpg', 'Shuhei Nomura, Kaya Kiyohara...', 'Nội dung phim kể về Higashi, một nam sinh trung học sống trên một hòn đảo xa xôi, tách biệt với đất liền. Cậu thích chơi bóng rổ từ bé. Vì lý do khách quan, Higashi quyết định từ bỏ bộ môn thể thao yêu thích nhất của mình. Khi biết tin Higashi bỏ bóng rổ, người bạn thân của cậu tên Saijo đến gây sự và hai bên đã đánh nhau. Rồi một cô gái bí ẩn tên Noruda xuất hiện, tiết lộ những điều khó hiểu về một cơn bão sắp quét qua hòn đảo.', 5, '00:26:00', 2015, 3, 4, 'Yôjirô Arai', 'video/17.mp4', 'https://www.youtube.com/embed/7q0dlFX23zA'),
(48, 'Bảy Viên Ngọc Rồng', 'images/capnhat/50.jpg', 'Masako Nozawa, Aya Hisakawa...', 'Dragon Ball Super Movie: Broly là bộ phim thứ 20 trong series Dragon Ball, và là Movie đầu tiên mang thương hiệu Dragon Ball Super, lấy bối cảnh khi đế chế Frieza đàn áp, đặt ách thống trị, bắt người Saiyan phải phải phục vụ làm việc dưới quyền của chúng. Khi đó 3 đứa trẻ Saiyan đã được sinh ra cùng một lúc, nhưng số phận của chúng lại hoàn toàn khác nhau: Vegeta là hoàng tử của tộc người Saiyan, Kakalot (Goku) là con trai của tướng quân Bardock, và Broly là con của Paragus.', 5, '01:40:00', 2018, 4, 4, 'Tatsuya Nagamine', 'video/18.mp4', 'https://www.youtube.com/embed/k2mBzRCKPQo'),
(49, 'Kẻ Cắp Giang Sinh', 'images/capnhat/51.png', 'Yarrow Cheney, Scott Mosier...', 'Grinch là một kẻ cô độc, suốt ngày cau có. Hắn không sống chung với bất kỳ ai mà ở trong hang núi với một chú chó. Bị bỏ rơi từ nhỏ, hắn luôn ganh tị với niềm hạnh phúc của tất cả mọi người. Mỗi năm vào dịp Giáng sinh, dân làng phá vỡ sự cô đơn yên tĩnh của hắn với mức độ ngày một ồn ào hơn, náo nhiệt hơn. ', 5, '01:36:00', 2018, 4, 4, 'Tatsuya Nagamine', 'video/19.mp4', 'https://www.youtube.com/embed/-sJqiSFHQkg'),
(50, 'Gia Đình Đạo Tặc', 'images/capnhat/52.jpg', 'Lily Franky, Sakura Andô...', 'Phim kể về một gia đình đặc biệt của những con người không cùng chung dòng máu, tất cả nương nhờ mái nhà lụp xụp của bà lão Hatsue, sỗng bằng tiền lương hưu của người chồng quá cố của bà. Kế sinh nhai của họ, ngoài những công việc tay chân tạm bợ, là nghề ăn trộm vặt tại những siêu thị, cửa hàng nhỏ gần nhà. Một ngày nọ, gia đình đặc biệt đã đón nhận một thành viên mới: cô bé Yuri bị cha mẹ ngược đãi.', 4, '02:00:00', 2018, 5, 4, 'Hirokazu Koreeda', 'video/20.mp4', 'https://www.youtube.com/embed/JYHUIsGl0NY'),
(51, 'Em Gái Đến Từ Tương Lai', 'images/capnhat/53.jpg', 'Rebecca Hall, John Cho...', 'Từ một cậu bé bướng bỉnh được cưng chiều nhất gia đình, Kun bỗng thấy vị trí của mình bị lung lay khi em gái cậu – Mirai, ra đời. Đố kỵ xen lẫn tủi thân, cậu bé 4 tuổi cảm thấy tình thương của bố mẹ dành cho mình bị giảm sút và cậu hoàn toàn bị choáng ngợp với việc phải trở thành một người anh. Mọi thứ dường rắc rối hơn khi Kun tình cờ phát hiện ra một cánh cổng kỳ lạ nơi đưa cậu đến gặp mẹ mình lúc bà còn là một cô bé và em gái mình – Mirai lại là một học sinh tuổi teen. Trải qua rất nhiều cuộc phiêu lưu, liệu Kun có dần thay đổi bản thân và học được cách trở thành một người anh trai đúng nghĩa?', 5, '01:38:00', 2018, 4, 4, 'Mamoru Hosoda', 'video/21.mp4', 'https://www.youtube.com/embed/0RH2U6Ls9QI'),
(52, 'Kamen rider vượt qua Z', 'images/capnhat/54.jpg', 'Kensei Mikami, Norio Wakamoto...', 'Kiryuu Sento, một thiên tài vật lý đang cố gắng đi tìm lại ký ức đã mất của mình. Một ngày nọ cậu gặp tên tù vượt ngục Banjou Ryuga, người được cho là nắm giữ đầu mối về ký ức đã mất của cậu. Nhưng chính ngay lúc ấy cả hai bị Smash, một dạng sinh vật sống không xác định mới xuất hiện ở Touto, tấn công. Không còn cách nào khác, Sento đành phải hóa thân thành Kamen Rider Build, chàng chiến binh bí ẩn mà người dân đang bàn tán những ngày qua, để cứu lấy bản thân.', 1, '01:00:00', 2018, 4, 4, 'Kyohei Yamaguchi', 'video/22.mp4', 'https://www.youtube.com/embed/i1m9jlD7xKs'),
(53, 'Fairytail', 'images/capnhat/55.jpg', 'Christopher Sabat, Ray Chase...', 'Cuộc hành trình cậu bé Izuku sau học kỳ siêu anh hùng đầu tiên, cũng như sau khi trải qua những lần đối đầu với kẻ thù lớn nhất của thế giới là “All For One” - kẻ mang sức mạnh chiếm đoạt các dị năng khác. Mang nặng mối lo nhưng Izuku sẽ được thư giãn vui chơi tại hòn đảo của những nhà khoa học lừng danh và biết thêm về quá khứ của All Might. Tuy nhiên không vì lẽ đó mà cái ác chịu đứng yên khi những thế lực xấu tiếp tục lên kế hoạch tấn công vào hòn đảo kiên cố nhất thế giới này.', 5, '01:39:00', 2018, 5, 4, 'Kenji Nagasaki', 'video/23.mp4', 'https://www.youtube.com/embed/nIR34-kYU6w'),
(54, 'Hunter X Hunter', 'images/capnhat/56.jpg', 'Ichirô Nagai, Tara Sands', 'Các Hunter mạnh nhất của Hiệp Hội Hunter đã chia ra thành hai phần, \"bóng tối\" và \"ánh sáng\", và mỗi bên trong bọn họ tự đi trên con đường riêng của mình. \"Mặt tối\" dần dần trở thành một thế lực truy sát các Hunters. Sau một cuộc tấn công dữ dội của Hunter \"bóng tối\", Killia bị trọng thương và Kurapika gần như sắp chết đến nơi. Mục đích thật sự sau các vụ tấn công các Hunters là gì? Giờ đây, những tội ác của Netero và của Hiệp Hội đều được thông báo rộng rãi. Liệu rằng Gon có thể giải quyết được \"bóng tối\" kia và cứu rỗi lấy bạn bè của mình? Gon sẽ phản ứng ra sao khi biết được tội ác đằng sau Netero và Hiệp Hội Hunter...', 5, '01:39:00', 2013, 4, 4, 'Keiichirô Kawaguchi', 'video/24.mp4', 'https://www.youtube.com/embed/HUUHxCSqcvU'),
(55, 'Conan', 'images/capnhat/57.jpg', 'Tôru Furuya, Rikiya Koyama...', '“Edge of Ocean”, một cơ sở mới của Vịnh Tokyo sẽ là nơi tổ chức Hội nghị Thượng đỉnh Tokyo. Hội nghị sẽ được tổ chức vào ngày 1/5 và có tới 22.000 cảnh sát được huy động, nhưng một vụ nổ bom cực lớn đột ngột xảy ra tại cơ sở siêu hoành tráng này! Tại nơi đó, vào lúc xảy ra vụ việc, lại nhìn thấy bóng dáng của Amuro Tooru thuộc tổ chức bí mật của Cảnh sát Quốc gia với bí danh là \"Zero\" đang điều khiển các cảnh sát an ninh trên toàn quốc. Tại hiện trường, cảnh sát đã phát hiện dấu vân tay của Mori Kogoro và ông bị bắt. Để chứng minh ông Mori vô tội, Conan đã bắt tay vào điều tra nhưng liên tục bị \"kẻ 3 mặt\" Amuro cản đường.', 5, '02:54:00', 2018, 5, 4, 'Yuzuru Tachikawa', 'video/25.mp4', 'https://www.youtube.com/embed/dE0PLIKz6b8'),
(56, 'Doraemon và Nobita', 'images/capnhat/58.jpg', 'Shin Ei Animation Shogakukan...', 'Ngày đầu tiên là ngày cậu bé Sewashi – con cháu 4 đời của Nobita ở thế kỷ 22 – du hành qua cỗ máy thời gian và mang theo một chú robot có chức năng giúp đỡ mọi người bằng những món bảo bối bí mật. Sewashi nói rằng cả gia đình đang phải gánh chịu khoản nợ nần mà Nobita để lại. Vậy nên Sewashi mang Doraemon tới giúp đỡ Nobita, vừa có thể thay đổi tương lai bi đát đó và vừa giúp Nobita được hạnh phúc hơn. \r\n\r\nCó lẽ nhiều người sẽ không nhớ rằng ban đầu Doraemon không vui vẻ gì với nhiệm vụ này, khiến cho Sewashi phải cài đặt một chương trình hợp tác, buộc Doraemon phải ở lại chăm sóc cho Nobita. Nếu không, Doraemon sẽ không thể trở về thế kỷ 22 được nữa.', 5, '01:39:00', 2013, 5, 4, 'Fujiko Productions', 'video/26.mp4', 'https://www.youtube.com/embed/vqfBsXTqFI8'),
(57, 'Phi Vụ Tiền Giả', 'images/capnhat/59.jpg', 'Châu Nhuận Phát, Quách Phú Thành...', 'Genres:Cảnh sát Hồng Kông đã phá vỡ một phi vụ tiền giả động trời và bắt được Lee Man, một thành viên chủ chốt của đường dây tiền giả khi hắn đang chạy trốn sang Thái Lan. Các thanh tra cảnh sát đang nỗ lực tìm ra chân tưóng của Painter, kẻ chủ mưu đứng đầu băng đảng làm tiền giả từ lời khai của Lee Man.	', 1, '02:10:00', 2018, 4, 6, 'Flix chong', 'video/27.mp4', 'https://www.youtube.com/embed/XbZvg0pgwak'),
(58, 'Lời Nguyền', 'images/capnhat/60.jpg', 'Suet Lam, Annie Liu...', 'Bác sĩ phẫu thuật Jia\'er (Annie Liu) lớn lên trong trại trẻ mồ côi, rất ngạc nhiên khi một ngày nhận được tin về một người bà (Nina Paw) vừa qua đời. Bức thư pháp lý nói rằng cô đã được thừa hưởng biệt thự của bà ngoại ở Malaysia. Bối rối về tiết lộ bất ngờ này, Jia\'er quyết định đến Malaysia cùng bạn mình là Jessica và Amy để tìm hiểu sự thật.', 3, '01:26:00', 2018, 4, 6, 'Wai Ying Yip', 'video/28.mp4', 'https://www.youtube.com/embed/Y8Tz6VcZEm0'),
(59, 'Đặc Vụ Bất Chấp', 'images/capnhat/61.jpg', 'Xa Thi Mạn, Trịnh Trung Cơ', 'Hào hoa và lịch lãm chẳng kém gì James Bond, Mr.Chan là một điệp viên đẳng cấp hàng đầu. Anh chàng được một nữ cảnh sát ngỏ lời giúp đỡ cô trong một vụ án đầy gian nan. Trong suốt hành trình truy tìm ra câu trả lời, cả hai đã gặp phải vô số những pha đụng độ nguy hiểm nhưng cũng không kém phần hài hước.', 1, '01:41:00', 2018, 3, 6, 'Jeff Cheung', 'video/29.mp4', 'https://www.youtube.com/embed/uxRxYG3_UzQ'),
(60, 'Săn Bão', 'images/capnhat/62.jpg', 'Cổ Thiên Lạc, Julian Cheung', 'Săn Bão (tên điện ảnh L Storm) là phần 3 của series Biệt đội chống tham nhũng. Sự thành công và được mong chờ của Săn bão còn đến từ màn tái xuất của Cổ Thiên Lạc, Trịnh Gia Dĩnh, Trương Trí Lâm cùng dàn sao TVB không chỉ đình đám một thời mà còn thu hút bởi vẻ ngoài soái ca lịch lãm, phong độ.', 1, '01:30:00', 2018, 3, 6, 'David Lam', 'video/30.mp4', 'https://www.youtube.com/embed/Mf9scEAqgyw'),
(61, 'Huynh Đệ Hoàng Kim', 'images/capnhat/63.jpg', 'Trịnh Y Kiện, Trần Tiểu Xuân...', 'Golden Job đánh dấu sự tái ngộ của dàn diễn viên đình đám Hong Kong trong một bộ phim sau 20 năm. Lần đầu tiên lên sóng vào năm 1996, bộ phim Người trong giang hồ (Young and Dangerous) đã nhận được sự quan tâm của dư luận. ', 2, '01:40:00', 2018, 5, 6, 'Kar Lok Chin', 'video/31.mp4', 'https://www.youtube.com/embed/HoFDcOSQ7y4'),
(62, 'Tiếu Lâm Tiểu Tử', 'images/capnhat/64.jpg', 'Shao-Wen Hao, Vivian Hsu', 'Chàng học sinh trung học Shao Ting thầm \'say nắng\' Ann - cô nàng xinh nhất trường, lại là cháu gái của hiệu trưởng. Chỉ có điều cô nàng đang hẹn hò với tay đầu gấu trong trường. Shao Tinh cả gan tiếp cận cô nàng, điều này khiến cho gã bạn trai của cô nổi giận. Trong chuyến đi tới Đại lục cùng gia đình, Shao Ting gặp hai chú tiểu nghịch ngợm. Vừa trở về Hong Kong, Shao Ting nhận tin dữ: Ann bị bắt cóc. Liệu với sự giúp đỡ của hai tiểu tử Thiếu Lâm, cậu có giải cứu được cho người mình yêu thương?', 1, '01:40:00', 1994, 3, 6, 'Yen-Ping Chu', 'video/21.mp4', 'https://www.youtube.com/embed/z8HkVPaZqh4'),
(63, 'Tiểu Lâm Tiểu Tử 2', 'images/capnhat/65.jpg', 'Dương Tử Quỳnh, Man-Tat Ng', 'Hai sát thủ Red Lemon và Yellow Lemon được cử đến Ô Long Viện để hành thích sư cụ trụ trì. Cả hai âm mưu chặt bàn tay của trụ trì, tương truyền mang sức mạnh kỳ bí. Không ngờ, tại Ô Long Viện, chúng chạm trán hai chú tiểu với đủ trò tinh quái. Âm mưu thâm độc này liệu có thành công, khi chúng vô tình chạm trán phải hai tiểu tử siêu quậy này?', 1, '01:30:00', 1994, 4, 6, 'Yen-Ping Chu', 'video/22.mp4', 'https://www.youtube.com/embed/gAc6NI0KXPM'),
(64, 'Địch Nhân Kiệt', 'images/capnhat/66.jpg', 'Lưu Gia Linh , Triệu Hựu Đình...', 'Tứ Đại Thiên Vương lấy bối cảnh tại kinh thành Lạc Dương thời nhà Đường. Sau khi phá được vụ án Long Vương, Địch Nhân Kiệt được phong làm chưởng quản Đại Lý Tự, trực tiếp trở thành chướng ngại vật ngăn cản con đường thâu tóm quyền lực của Võ Tắc Thiên', 2, '02:12:00', 2018, 2, 6, 'Hark Tsui', 'video/23.mp4', 'https://www.youtube.com/embed/6RQRZUsTPLg'),
(65, 'Tây Du Ký 3', 'images/capnhat/67.jpg', 'Triệu Lệ Dĩnh , Phùng Thiệu Phong...', 'Bốn thầy trò Tam Tạng (Phùng Thiệu Phong), Tôn Ngộ Không (Quách Phú Thành), Trư Bát Giới (Tiểu Thẩm Dương) và Sa Tăng (La Trọng Khiêm) du ngoạn cảnh sắc đồng thời vượt ải mỹ nhân tại Nữ Nhi Quốc của Nữ Vương (Triệu Lệ Dĩnh). Với kinh phí sản xuất lên tới hơn 1,500 tỷ VNĐ, phim hứa hẹn sẽ đem tới cho khán giả một bữa tiệc giải trí đầu xuân mãn nhãn và đầy ý nghĩa.', 1, '01:54:00', 2016, 4, 6, 'Trịnh bảo Thụy', 'video/29.mp4', 'https://www.youtube.com/embed/-dRwM2SECIg'),
(66, 'Đại Sư Huynh', 'images/capnhat/68.jpg', 'Chung Tử Đơn, Jai Day..', 'Một giáo viên trung học mỗi ngày đều đặn tới trường gõ đầu trẻ cho đến một hôm…cậu học sinh do anh chủ nhiệm dính vào rắc rối với một băng đảng xã hội đen và bị bắt cóc. Đó cũng là lúc bí mật của“anh” thầy trước giờ luôn hiền lành, hết mực yêu thương học sinh và có tâm với nghề bị bộc lộ. Có vẻ như quá khứ máu lửa không buông tha “anh” thầy mà buộc anh phải trở lại con người xưa nhưng có khác là lần này không phải chiến đấu cho bản thân anh, mà cho những đứa trẻ mà anh luôn xem chúng như những đứa em trai.', 2, '01:41:00', 2016, 5, 6, 'Kan Ka Wai', 'video/30.mp4', 'https://www.youtube.com/embed/QkWShgXdHC8'),
(67, 'The Avengers', 'images/capnhat/6.jpg', 'Robert Downey Jr, Chris Hemsworth, Chris Evans, Mark Ruffalo, Benedict Cumberbatch...', 'Marvel’s The Avengers là bộ phim giả tưởng kể về một nhóm siêu anh hùng với những khả năng đặc biệt, họ bao gồm: Người Sắt, Thor, Captain America, và Người Khổng Lồ được gọi chung với cái tên SHIELD. Mục đích của SHIELD là nhằm bảo vệ Trái đất khỏi âm mưu hủy hoại của những thế lực xấu từ ngoài địa cầu mà kẻ cầm đầu là Loki. Marvel’s The Avengers Là một trong những phim được mong đợi nhất hè 2012, phim quy tụ dàn diễn viên đẹp với những cảnh quay sống động đã mang về cho nhà sản xuất hơn 1 tỷ USD. Nếu bạn đã từng là Fan của những siêu phẩm như: Spider-Man, Batman thì Marvel’s The Avengers quả là một bộ phim khó có thể bỏ qua', 1, '02:38:33', 2012, 4, 2, 'Joss Whedon', 'video/4.mp4', 'https://www.youtube.com/embed/Bx6hLQWVQDk');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quocgia`
--

CREATE TABLE `quocgia` (
  `IDQUOCGIA` int(11) NOT NULL,
  `TENQUOCGIA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `quocgia`
--

INSERT INTO `quocgia` (`IDQUOCGIA`, `TENQUOCGIA`) VALUES
(1, 'Việt Nam'),
(2, 'Mỹ'),
(3, 'Trung Quốc'),
(4, 'Nhật Bản'),
(5, 'Hàn QUốc'),
(6, 'Hồng Kông');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `IDTHELOAI` int(11) NOT NULL,
  `TENTHELOAI` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`IDTHELOAI`, `TENTHELOAI`) VALUES
(1, 'Phim hành động'),
(2, 'Phim hài'),
(3, 'Phim kinh dị'),
(4, 'Phim tình cảm'),
(5, 'Phim hoạt hình');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `IDUSER` int(11) NOT NULL,
  `TENUSER` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`IDUSER`, `TENUSER`, `USERNAME`, `PASSWORD`) VALUES
(3, 'vo thien trung', 'thientrungvo19@gmail.com', '123'),
(9, 'cong nam', 'nam410@gmail.com', '123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`IDCOMMENT`),
  ADD KEY `FK_TENUSERCOMMENT` (`NAME`),
  ADD KEY `FK_PHIMCOMMENT` (`PHIMCOMMENT`);

--
-- Chỉ mục cho bảng `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`IDFILM`),
  ADD KEY `FK_THELOAI` (`THELOAI`),
  ADD KEY `FK_QUOCGIA` (`QUOCGIA`);

--
-- Chỉ mục cho bảng `quocgia`
--
ALTER TABLE `quocgia`
  ADD PRIMARY KEY (`IDQUOCGIA`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`IDTHELOAI`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDUSER`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `IDCOMMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `film`
--
ALTER TABLE `film`
  MODIFY `IDFILM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `quocgia`
--
ALTER TABLE `quocgia`
  MODIFY `IDQUOCGIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `IDTHELOAI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `IDUSER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `FK_PHIMCOMMENT` FOREIGN KEY (`PHIMCOMMENT`) REFERENCES `film` (`IDFILM`),
  ADD CONSTRAINT `FK_TENUSERCOMMENT` FOREIGN KEY (`NAME`) REFERENCES `user` (`IDUSER`);

--
-- Các ràng buộc cho bảng `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK_QUOCGIA` FOREIGN KEY (`QUOCGIA`) REFERENCES `quocgia` (`IDQUOCGIA`),
  ADD CONSTRAINT `FK_THELOAI` FOREIGN KEY (`THELOAI`) REFERENCES `theloai` (`IDTHELOAI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
