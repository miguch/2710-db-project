
/* users-permissions_permission */
CREATE TABLE `users-permissions_permission` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `type` varchar(255) NOT NULL,
        `controller` varchar(255) NOT NULL,
        `action` varchar(255) NOT NULL,
        `enabled` tinyint(1) NOT NULL,
        `policy` varchar(255) DEFAULT NULL,
        `role` int(11) DEFAULT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=797 DEFAULT CHARSET=utf8mb4;

/* users-permissions_role */
CREATE TABLE `users-permissions_role` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `name` varchar(255) NOT NULL,
        `description` varchar(255) DEFAULT NULL,
        `type` varchar(255) DEFAULT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/* users-permissions_user */
CREATE TABLE `users-permissions_user` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `username` varchar(255) NOT NULL,
        `email` varchar(255) NOT NULL,
        `provider` varchar(255) DEFAULT NULL,
        `password` varchar(255) DEFAULT NULL,
        `resetPasswordToken` varchar(255) DEFAULT NULL,
        `confirmationToken` varchar(255) DEFAULT NULL,
        `confirmed` tinyint(1) DEFAULT NULL,
        `blocked` tinyint(1) DEFAULT NULL,
        `role` int(11) DEFAULT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        `phone` varchar(255) DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

/* customers */
CREATE TABLE `customers` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `user` int(10) unsigned NOT NULL,
        `street` varchar(255) DEFAULT NULL,
        `city` varchar(255) DEFAULT NULL,
        `state` varchar(255) DEFAULT NULL,
        `zipcode` int(11) DEFAULT NULL,
        `kind` varchar(255) NOT NULL,
        `business_customer` int(11) DEFAULT NULL,
        `home_customer` int(11) DEFAULT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        PRIMARY KEY (`id`),
        UNIQUE KEY (user),
        FOREIGN KEY (user) REFERENCES `users-permissions_user`(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;


/* home_customers */
CREATE TABLE `home_customers` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `marriage` varchar(255) DEFAULT NULL,
        `gender` varchar(255) DEFAULT NULL,
        `age` int(11) DEFAULT NULL,
        `income` int(11) DEFAULT NULL,
        `customer` int(10) unsigned NOT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        PRIMARY KEY (`id`),
        FOREIGN KEY (customer) REFERENCES customers(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


/* business_customers */
CREATE TABLE `business_customers` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `category` varchar(255) DEFAULT NULL,
        `income` int(11) DEFAULT NULL,
        `customer` int(10) unsigned NOT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        PRIMARY KEY (`id`),
        FOREIGN KEY (customer) REFERENCES customers(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


/* sales_people */
CREATE TABLE `sales_people` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `job_title` varchar(255) DEFAULT NULL,
        `salary` double DEFAULT NULL,
        `store` int(10) unsigned NOT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        `user` int(10) unsigned NOT NULL,
        `street` varchar(255) DEFAULT NULL,
        `city` varchar(255) DEFAULT NULL,
        `state` varchar(255) DEFAULT NULL,
        `zipcode` int(11) DEFAULT NULL,
        PRIMARY KEY (`id`),
        UNIQUE KEY (user),
        FOREIGN KEY (user) REFERENCES `users-permissions_user`(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;



/* regions */
CREATE TABLE `regions` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `region_name` varchar(255) DEFAULT NULL,
        `region_manager` int(11) DEFAULT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/* stores */
CREATE TABLE `stores` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `manager` int(10) unsigned DEFAULT NULL,
        `region` int(10) unsigned NOT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        `name` varchar(255) DEFAULT NULL,
        PRIMARY KEY (`id`),
        FOREIGN KEY (region) REFERENCES regions(id) ON DELETE RESTRICT,
        FOREIGN KEY (manager) REFERENCES sales_people(id) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
ALTER TABLE `sales_people`
ADD FOREIGN KEY (`store`) REFERENCES `stores`(id) ON DELETE RESTRICT;/;


/* product_kinds */
CREATE TABLE `product_kinds` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `name` varchar(255) NOT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/* products */
CREATE TABLE `products` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `name` varchar(255) NOT NULL,
        `price` decimal(10,2) NOT NULL,
        `published_at` datetime DEFAULT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        `description` longtext DEFAULT NULL,
        `product_type` int(10) unsigned NOT NULL,
        PRIMARY KEY (`id`),
        UNIQUE (name),
        FOREIGN KEY (product_type) REFERENCES product_kinds(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
CREATE INDEX prod_name_index ON products(name);
CREATE INDEX prod_price_index ON products(price);
CREATE INDEX prod_type_index ON products(product_type);

/* product_stores */
CREATE TABLE `product_stores` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `product` int(10) unsigned NOT NULL,
        `store` int(10) unsigned NOT NULL,
        `amount` int(11) NOT NULL,
        `published_at` datetime DEFAULT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        PRIMARY KEY (`id`),
        UNIQUE (product, store),
        FOREIGN KEY (product) REFERENCES products(id) ON DELETE CASCADE ,
        FOREIGN KEY (store) REFERENCES stores(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
CREATE INDEX prod_store ON product_stores(product, store);

/* transactions */
CREATE TABLE `transactions` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `sale_date` date DEFAULT NULL,
        `salesperson` int(10) unsigned NOT NULL,
        `customer` int(10) unsigned NOT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        PRIMARY KEY (`id`),
        FOREIGN KEY (salesperson) REFERENCES sales_people(id) ON DELETE SET NULL,
        FOREIGN KEY (customer) REFERENCES customers(id) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4;
CREATE INDEX customer_trans ON transactions(customer);
CREATE INDEX sales_trans ON transactions(salesperson);

/* product_transactions */
CREATE TABLE `product_transactions` (
        `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
        `transaction` int(10) unsigned DEFAULT NULL,
        `product` int(10) unsigned DEFAULT NULL,
        `price` decimal(10,2) DEFAULT NULL,
        `amount` int(11) DEFAULT NULL,
        `created_by` int(11) DEFAULT NULL,
        `updated_by` int(11) DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT current_timestamp(),
        `updated_at` timestamp NULL DEFAULT current_timestamp(),
        PRIMARY KEY (`id`),
        FOREIGN KEY (product) REFERENCES products(id) ON DELETE SET NULL,
        FOREIGN KEY (transaction) REFERENCES transactions(id) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
CREATE INDEX prod_trans ON product_transactions(`transaction`, product);
