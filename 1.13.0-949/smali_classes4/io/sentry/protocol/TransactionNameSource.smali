.class public final enum Lio/sentry/protocol/TransactionNameSource;
.super Ljava/lang/Enum;
.source "TransactionNameSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/protocol/TransactionNameSource;",
        ">;"
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/protocol/TransactionNameSource;

.field public static final enum COMPONENT:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum CUSTOM:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum ROUTE:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum TASK:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum URL:Lio/sentry/protocol/TransactionNameSource;

.field public static final enum VIEW:Lio/sentry/protocol/TransactionNameSource;


# direct methods
.method private static synthetic $values()[Lio/sentry/protocol/TransactionNameSource;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lio/sentry/protocol/TransactionNameSource;

    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->URL:Lio/sentry/protocol/TransactionNameSource;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->ROUTE:Lio/sentry/protocol/TransactionNameSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->VIEW:Lio/sentry/protocol/TransactionNameSource;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->TASK:Lio/sentry/protocol/TransactionNameSource;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    .line 2
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "URL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->URL:Lio/sentry/protocol/TransactionNameSource;

    .line 3
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "ROUTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->ROUTE:Lio/sentry/protocol/TransactionNameSource;

    .line 4
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "VIEW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->VIEW:Lio/sentry/protocol/TransactionNameSource;

    .line 5
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "COMPONENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    .line 6
    new-instance v0, Lio/sentry/protocol/TransactionNameSource;

    const-string v1, "TASK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/TransactionNameSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->TASK:Lio/sentry/protocol/TransactionNameSource;

    .line 7
    invoke-static {}, Lio/sentry/protocol/TransactionNameSource;->$values()[Lio/sentry/protocol/TransactionNameSource;

    move-result-object v0

    sput-object v0, Lio/sentry/protocol/TransactionNameSource;->$VALUES:[Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    const-class v0, Lio/sentry/protocol/TransactionNameSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/TransactionNameSource;

    return-object p0
.end method

.method public static values()[Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->$VALUES:[Lio/sentry/protocol/TransactionNameSource;

    invoke-virtual {v0}, [Lio/sentry/protocol/TransactionNameSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/protocol/TransactionNameSource;

    return-object v0
.end method


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
