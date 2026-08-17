<section class="section-b-space pt-0">
    <div class="custom-container container user-dashboard-section">
        <div class="row">
            <div class="col-xl-3 col-lg-4">
                <div class="left-dashboard-show">
                    <button class="btn btn_black sm rounded bg-primary">Hiện Menu</button>
                </div>
                <div class="dashboard-left-sidebar sticky">
                    <div class="profile-box">
                        <div class="profile-bg-img"></div>
                        <div class="dashboard-left-sidebar-close"><i class="fa-solid fa-xmark"></i></div>
                        <div class="profile-contain">
                            <div class="profile-image">
                                <img class="img-fluid" src="/Duan1-main/public/client/assets/images/user/12.jpg" alt="">
                            </div>
                            <div class="profile-name">
                                <h4><?= htmlspecialchars($userInfo['name']) ?></h4>
                                <h6><?= htmlspecialchars($userInfo['email']) ?></h6>

                            </div>
                        </div>
                    </div>
                    <ul class="nav flex-column nav-pills dashboard-tab" id="v-pills-tab" role="tablist"
                        aria-orientation="vertical">
                        <li>
                            <button class="nav-link active" id="dashboard-tab" data-bs-toggle="pill"
                                data-bs-target="#dashboard" role="tab" aria-controls="dashboard" aria-selected="true">
                                <i class="iconsax" data-icon="home-1"></i> Bảng điều khiển
                            </button>
                        </li>
                        <li>
                            <button class="nav-link" id="order-tab" data-bs-toggle="pill" data-bs-target="#order"
                                role="tab" aria-controls="order" aria-selected="false">
                                <i class="iconsax" data-icon="receipt-square"></i> Đơn hàng
                            </button>
                        </li>
                        <li>
                            <button class="nav-link" id="address-tab" data-bs-toggle="pill" data-bs-target="#address"
                                role="tab" aria-controls="address" aria-selected="false">
                                <i class="iconsax" data-icon="cue-cards"></i> Địa chỉ
                            </button>
                        </li>
                    </ul>
                    <div class="logout-button">
                        <a class="btn btn_black sm" href="?act=logout" title="Đăng xuất" tabindex="0">
                            <i class="iconsax me-1" data-icon="logout-1"></i> Đăng xuất
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-xl-9 col-lg-8">
                <div class="tab-content" id="v-pills-tabContent">
                    <div class="tab-pane fade show active" id="dashboard" role="tabpanel"
                        aria-labelledby="dashboard-tab">
                        <?php if (!empty($_SESSION['update_address_errors'])): ?>
                        <div class="alert alert-danger">
                            <ul>
                                <?php foreach ($_SESSION['update_address_errors'] as $error): ?>
                                <li><?= htmlspecialchars($error) ?></li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                        <?php unset($_SESSION['update_address_errors']); ?>
                        <?php endif; ?>

                        <?php if (!empty($_SESSION['update_address_success'])): ?>
                        <div class="alert alert-success">
                            <?= htmlspecialchars($_SESSION['update_address_success']) ?>
                        </div>
                        <?php unset($_SESSION['update_address_success']); ?>
                        <?php endif; ?>



                        <?php if (!empty($_SESSION['error_update_pass'])): ?>
                        <div class="alert alert-danger">
                            <ul>
                                <?php if (is_array($_SESSION['error_update_pass'])): ?>
                                <?php foreach ($_SESSION['error_update_pass'] as $error): ?>
                                <li><?= htmlspecialchars($error) ?></li>
                                <?php endforeach; ?>
                                <?php else: ?>
                                <li><?= htmlspecialchars($_SESSION['error_update_pass']) ?></li>
                                <?php endif; ?>
                            </ul>
                        </div>
                        <?php unset($_SESSION['error_update_pass']); ?>
                        <?php endif; ?>

                        <?php if (!empty($_SESSION['success_update_pass'])): ?>
                        <div class="alert alert-success">
                            <?= htmlspecialchars($_SESSION['success_update_pass']) ?>
                        </div>
                        <?php unset($_SESSION['success_update_pass']); ?>
                        <?php endif; ?>


                        <?php if (!empty($_SESSION['error_update_email'])): ?>
                        <div class="alert alert-danger">
                            <ul>
                                <?php if (is_array($_SESSION['error_update_email'])): ?>
                                <?php foreach ($_SESSION['error_update_email'] as $error): ?>
                                <li><?= htmlspecialchars($error) ?></li>
                                <?php endforeach; ?>
                                <?php else: ?>
                                <li><?= htmlspecialchars($_SESSION['error_update_email']) ?></li>
                                <?php endif; ?>
                            </ul>
                        </div>
                        <?php unset($_SESSION['error_update_email']); ?>
                        <?php endif; ?>

                        <?php if (!empty($_SESSION['success_update_email'])): ?>
                        <div class="alert alert-success">
                            <?= htmlspecialchars($_SESSION['success_update_email']) ?>
                        </div>
                        <?php unset($_SESSION['success_update_email']); ?>
                        <?php endif; ?>



                        <?php if (!empty($_SESSION['success_update_order'])): ?>
                        <div class="alert alert-success">
                            <?= htmlspecialchars($_SESSION['success_update_order']) ?>
                        </div>
                        <?php unset($_SESSION['success_update_order']); ?>
                        <?php endif; ?>

                        <?php if (!empty($_SESSION['error_message'])): ?>
                        <div class="alert alert-danger">
                            <?= htmlspecialchars($_SESSION['error_message']) ?>
                        </div>
                        <?php unset($_SESSION['error_message']); ?>
                        <?php endif; ?>



                        <div class="dashboard-right-box">
                            <div class="my-dashboard-tab">
                                <div class="dashboard-items"></div>
                                <div class="sidebar-title">
                                    <div class="loader-line"></div>
                                    <h4>Bảng điều khiển của tôi</h4>
                                </div>
                                <div class="dashboard-user-name">
                                    <h6>Xin chào, <b><?= htmlspecialchars($userInfo['name']) ?></b></h6>
                                    <p>Bảng điều khiển của tôi cung cấp cái nhìn tổng quan về các số liệu và dữ liệu
                                        quan trọng liên quan đến hoạt động của bạn.</p>
                                </div>
                                <div class="total-box">
                                    <div class="row gy-4">
                                        <div class="col-xl-4">
                                            <div class="totle-contain">
                                                <div class="wallet-point">
                                                    <img src="https://themes.pixelstrap.net/katie/assets/images/svg-icon/order.svg"
                                                        alt="">
                                                    <img class="img-1"
                                                        src="https://themes.pixelstrap.net/katie/assets/images/svg-icon/order.svg"
                                                        alt="">
                                                </div>
                                                <div class="totle-detail">
                                                    <h6>Tổng đơn hàng</h6>
                                                    <h4><?= $totalOrders ?></h4>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="profile-about">
                                    <div class="row">
                                        <div class="col-xl-7">
                                            <div class="sidebar-title">
                                                <div class="loader-line"></div>
                                                <h5>Thông tin hồ sơ</h5>
                                            </div>
                                            <ul class="profile-information">
                                                <li>
                                                    <h6>Họ tên:</h6>
                                                    <p><?= htmlspecialchars($userInfo['name']) ?></p>
                                                </li>
                                                <li>
                                                    <h6>Số điện thoại:</h6>
                                                    <p><?= htmlspecialchars($userInfo['so_dien_thoai']) ?></p>
                                                </li>
                                                <li>
                                                    <h6>Địa chỉ:</h6>
                                                    <p><?= htmlspecialchars($userInfo['dia_chi']) ?></p>
                                                </li>
                                            </ul>
                                            <div class="sidebar-title">
                                                <div class="loader-line"></div>
                                                <h5>Chi tiết đăng nhập</h5>
                                            </div>
                                            <ul class="profile-information mb-0">
                                                <li>
                                                    <h6>Email:</h6>
                                                    <p><?= htmlspecialchars($userInfo['email']) ?><span
                                                            data-bs-toggle="modal" data-bs-target="#edit-email"
                                                            title="Chỉnh sửa" tabindex="0">Chỉnh sửa</span></p>
                                                </li>
                                                <li>
                                                    <h6>Mật khẩu:</h6>
                                                    <p>●●●●●●<span data-bs-toggle="modal"
                                                            data-bs-target="#edit-password" title="Chỉnh sửa"
                                                            tabindex="0">Chỉnh sửa</span></p>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-xl-5">
                                            <div class="profile-image d-none d-xl-block">
                                                <img class="img-fluid"
                                                    src="/Duan1-main/public/client/assets/images/other-img/dashboard.png"
                                                    alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="order" role="tabpanel" aria-labelledby="order-tab">
                        <div class="dashboard-right-box">
                            <div class="order">
                                <div class="sidebar-title">
                                    <div class="loader-line"></div>
                                    <h4>Lịch sử đơn hàng của tôi</h4>
                                </div>
                                <div class="row gy-4">
                                    <?php if (!empty($orderList)): ?>
                                    <?php foreach ($orderList as $order): ?>
                                    <div class="col-12">
                                        <div class="order-box">
                                            <div class="order-container">
                                                <div class="order-icon">
                                                    <i class="iconsax" data-icon="box"></i>
                                                    <div class="couplet"><i class="fa-solid fa-check"></i></div>
                                                </div>
                                                <div class="order-detail">
                                                    <h5><?= htmlspecialchars($order['ten_trang_thai'] ?? 'Chưa xác định') ?>
                                                    </h5>
                                                    <p>Ngày đặt: <?= date('d/m/Y', strtotime($order['ngay_dat'])) ?></p>
                                                </div>
                                            </div>
                                            <div class="product-order-detail">
                                                <div class="product-box">
                                                    <div class="order-wrap">
                                                        <h5>Mã đơn hàng: #<?= $order['id'] ?></h5>
                                                        <p>Phương thức vận chuyển:
                                                            <?= htmlspecialchars($order['van_chuyen']) ?></p>
                                                        <p>Phương thức thanh toán:
                                                            <?= htmlspecialchars($order['thanh_toan']) ?></p>
                                                        <!-- Hiển thị sản phẩm -->
                                                        <div class="order-items">
                                                            <h6>Sản phẩm:</h6>
                                                            <?php if (!empty($order['items'])): ?>
                                                            <?php foreach ($order['items'] as $item): ?>
                                                            <div class="order-item">
                                                                <div class="item-image">
                                                                    <img src="/Duan1-main/public/admin/assets_admin/images/product/<?= htmlspecialchars($item['hinh_anh']) ?>"
                                                                        alt="<?= htmlspecialchars($item['ten_sp']) ?>"
                                                                        style="width: 50px; height: 50px;">
                                                                </div>
                                                                <div class="item-details">
                                                                    <p><strong><?= htmlspecialchars($item['ten_sp']) ?></strong>
                                                                    </p>
                                                                    <p>Màu: <?= htmlspecialchars($item['ten_mau']) ?>,
                                                                        Kích cỡ:
                                                                        <?= htmlspecialchars($item['ten_kich_co']) ?>
                                                                    </p>
                                                                    <p>Số lượng: <?= $item['so_luong'] ?> x
                                                                        <?= number_format($item['don_gia'], 0, ',', '.') ?>
                                                                        VND</p>
                                                                    <p>Thành tiền:
                                                                        <?= number_format($item['thanh_tien'], 0, ',', '.') ?>
                                                                        VND</p>
                                                                </div>
                                                            </div>
                                                            <?php endforeach; ?>
                                                            <?php else: ?>
                                                            <p>Không có sản phẩm nào trong đơn hàng này.</p>
                                                            <?php endif; ?>
                                                        </div>
                                                        <ul>
                                                            <li>
                                                                <p>Tổng tiền: </p>
                                                                <span><?= number_format($order['tong_tien'], 0, ',', '.') ?>
                                                                    VND</span>
                                                            </li>
                                                        </ul>
                                                        <!-- Nút hủy đơn hàng -->
                                                        <?php if ($order['ten_trang_thai'] === 'Chờ xác nhận'): ?>
                                                        <a href="?act=cancel_order&id=<?=$order['id'] ?>"
                                                            class="btn btn-danger btn-sm mt-2"
                                                            onclick="return confirm('Bạn có chắc chắn muốn hủy đơn hàng này?');">Hủy
                                                            đơn hàng</a>
                                                        <?php endif; ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="return-box">
                                                <h6>* Chính sách đổi trả: Liên hệ trong 7 ngày</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endforeach; ?>
                                    <?php else: ?>
                                    <div class="col-12">
                                        <p>Bạn chưa có đơn hàng nào.</p>
                                    </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="address" role="tabpanel" aria-labelledby="address-tab">
                        <div class="dashboard-right-box">
                            <div class="address">
                                <div class="sidebar-title">
                                    <div class="loader-line"></div>
                                    <h4>Địa chỉ của tôi</h4>
                                </div>
                                <div class="address-option">
                                    <label for="address-billing-0">
                                        <span class="delivery-address-box">
                                            <span class="address-detail">
                                                <span class="address">
                                                    <span class="address-home">
                                                        <span class="address-tag">Địa chỉ:</span>
                                                        <?= $userInfo['dia_chi']?>
                                                    </span>
                                                </span>
                                                <span class="address">
                                                    <span class="address-home">
                                                        <span class="address-tag">Số điện thoại:</span>
                                                        <?= $userInfo['so_dien_thoai']?>
                                                    </span>
                                                </span>
                                            </span>
                                        </span>
                                        <span class="buttons mt-3  ">
                                            <a class="btn btn_black sm" href="#" data-bs-toggle="modal"
                                                data-bs-target="#edit-box" title="Quick View" tabindex="0">
                                                Edit
                                            </a>
                                        </span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Modal chỉnh sửa email -->
<div class="modal fade" id="edit-email" tabindex="-1" aria-labelledby="editEmailModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editEmailModalLabel">Chỉnh sửa email</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="?act=update_email" method="POST">
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email mới</label>
                        <input type="email" class="form-control" id="email" name="email"
                            value="<?= htmlspecialchars($userInfo['email']) ?>" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-primary">Cập nhật</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal chỉnh sửa mật khẩu -->
<div class="modal fade" id="edit-password" tabindex="-1" aria-labelledby="editPasswordModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editPasswordModalLabel">Chỉnh sửa mật khẩu</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="?act=update_password" method="POST">
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="current_password" class="form-label">Mật khẩu hiện tại</label>
                        <input type="password" class="form-control" id="current_password" name="current_password"
                            required>
                    </div>
                    <div class="mb-3">
                        <label for="new_password" class="form-label">Mật khẩu mới</label>
                        <input type="password" class="form-control" id="new_password" name="new_password" required>
                    </div>
                    <div class="mb-3">
                        <label for="confirm_password" class="form-label">Xác nhận mật khẩu mới</label>
                        <input type="password" class="form-control" id="confirm_password" name="confirm_password"
                            required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-primary">Cập nhật</button>
                </div>
            </form>
        </div>
    </div>
</div>


<!-- Modal địa chỉ  -->
<div class="modal fade" id="edit-box" tabindex="-1" aria-labelledby="editBoxLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="?act=update_Address" method="POST">
                <div class="modal-header">
                    <h5 class="modal-title" id="editBoxLabel">Chỉnh sửa địa chỉ</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Đóng"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="editAddress" class="form-label">Địa chỉ</label>
                        <input type="text" class="form-control" id="editAddress" name="dia_chi"
                            value="<?= $userInfo['dia_chi'] ?>">
                    </div>
                    <div class="mb-3">
                        <label for="editPhone" class="form-label">Số điện thoại</label>
                        <input type="text" class="form-control" id="editPhone" name="so_dien_thoai"
                            value="<?= $userInfo['so_dien_thoai'] ?>">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <input name="update_dia_chi" value="Lưu thay đổi" type="submit" class="btn btn-primary"></input>
                </div>
            </form>
        </div>
    </div>
</div>