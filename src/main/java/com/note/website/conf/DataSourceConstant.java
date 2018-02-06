package com.note.website.conf;

public final class DataSourceConstant {
    private DataSourceConstant() {
    }

    public static final class NoteCore {
        public static final String PREFIX = "notecore";
        public static final String ENTITY_MANAGER = PREFIX + "EntityManager";
        public static final String TRANSACTION_MANAGER = PREFIX + "TransactionManager";
        public static final String DATASOURCE = PREFIX + "DataSource";
        public static final String PREFIX_DATASOURCE = PREFIX + ".datasource";
        public static final String PROPERTIES = PREFIX + "Properties";
        public static final String PREFIX_PROPERTIES = PREFIX + ".jpa";
        public static final String REPO_PACKAGE = "com.note.website.core.repository";
        public static final String ENTITY_PACKAGE = "com.note.website.core.entity";
        public static final String UNIT = PREFIX + "Unit";
        public static final String POOL = PREFIX + "Pool";

    }

    public static final class NoteContent {
        public static final String PREFIX = "notecontent";
        public static final String ENTITY_MANAGER = PREFIX + "EntityManager";
        public static final String TRANSACTION_MANAGER = PREFIX + "TransactionManager";
        public static final String DATASOURCE = PREFIX + "DataSource";
        public static final String PREFIX_DATASOURCE = PREFIX + ".datasource";
        public static final String PROPERTIES = PREFIX + "Properties";
        public static final String PREFIX_PROPERTIES = PREFIX + ".jpa";
        public static final String REPO_PACKAGE = "com.note.website.content.repository";
        public static final String ENTITY_PACKAGE = "com.note.website.content.entity";
        public static final String UNIT = PREFIX + "Unit";
        public static final String POOL = PREFIX + "Pool";

    }
}


