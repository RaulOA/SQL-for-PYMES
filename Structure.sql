CREATE TABLE [clients] (
  [client_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED ON [PRIMARY],
  [client_name] VARCHAR(50) NULL,
  [client_balance] INT NULL,
  [client_credit] INT NULL,
  [client_discount] INT NULL
);

CREATE TABLE [addresses] (
  [client_id] INT NOT NULL,
  [address_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED ON [PRIMARY],
  [address_number] INT NULL,
  [address_street] VARCHAR(50) NULL,
  [address_district] VARCHAR(50) NULL,
  [address_state] VARCHAR(50) NULL,
  FOREIGN KEY ([client_id]) REFERENCES [clients]([client_id]),
  CONSTRAINT addresses_unique UNIQUE ([client_id], [address_id])
);

CREATE TABLE [factories] (
  [factory_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED ON [PRIMARY],
  [factory_name] VARCHAR(50) NULL,
  [factory_phone] INT NULL
);

CREATE TABLE [articles] (
  [article_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED ON [PRIMARY],
  [article_name] VARCHAR(50) NULL,
  [article_description] VARCHAR(100) NULL
);

CREATE TABLE [factory_article] (
  [factory_id] INT NOT NULL,
  [article_id] INT NOT NULL,
  [article_stock] INT NULL,
  [article_max_production] INT NULL,
  FOREIGN KEY ([factory_id]) REFERENCES [factories]([factory_id]),
  FOREIGN KEY ([article_id]) REFERENCES [articles]([article_id]),
  CONSTRAINT article_factory_unique UNIQUE ([article_id], [factory_id])
);

CREATE TABLE [orders] (
  [order_id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED ON [PRIMARY],
  [client_id] INT NOT NULL,
  [address_id] INT NOT NULL,
  [article_id] INT NOT NULL,
  [articles_amount] INT NOT NULL,
  [order_date] DATETIME NOT NULL,
  FOREIGN KEY ([client_id]) REFERENCES [clients]([client_id]),
  FOREIGN KEY ([address_id]) REFERENCES [addresses]([address_id]),
  FOREIGN KEY ([article_id]) REFERENCES [articles]([article_id])
);