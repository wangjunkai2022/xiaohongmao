.class public final enum Lio/sentry/SentryItemType;
.super Ljava/lang/Enum;
.source "SentryItemType.java"

# interfaces
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryItemType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryItemType;",
        ">;",
        "Lio/sentry/m1;"
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryItemType;

.field public static final enum Attachment:Lio/sentry/SentryItemType;

.field public static final enum ClientReport:Lio/sentry/SentryItemType;

.field public static final enum Event:Lio/sentry/SentryItemType;

.field public static final enum Profile:Lio/sentry/SentryItemType;

.field public static final enum ReplayEvent:Lio/sentry/SentryItemType;

.field public static final enum ReplayRecording:Lio/sentry/SentryItemType;

.field public static final enum Session:Lio/sentry/SentryItemType;

.field public static final enum Transaction:Lio/sentry/SentryItemType;

.field public static final enum Unknown:Lio/sentry/SentryItemType;

.field public static final enum UserFeedback:Lio/sentry/SentryItemType;


# instance fields
.field private final itemType:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/sentry/SentryItemType;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lio/sentry/SentryItemType;

    sget-object v1, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryItemType;->Profile:Lio/sentry/SentryItemType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryItemType;->ReplayEvent:Lio/sentry/SentryItemType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryItemType;->ReplayRecording:Lio/sentry/SentryItemType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryItemType;->Unknown:Lio/sentry/SentryItemType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Session"

    const/4 v2, 0x0

    const-string v3, "session"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    .line 2
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Event"

    const/4 v2, 0x1

    const-string v3, "event"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    .line 3
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "UserFeedback"

    const/4 v2, 0x2

    const-string v3, "user_report"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    .line 4
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Attachment"

    const/4 v2, 0x3

    const-string v3, "attachment"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    .line 5
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Transaction"

    const/4 v2, 0x4

    const-string v3, "transaction"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    .line 6
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Profile"

    const/4 v2, 0x5

    const-string v3, "profile"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Profile:Lio/sentry/SentryItemType;

    .line 7
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "ClientReport"

    const/4 v2, 0x6

    const-string v3, "client_report"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    .line 8
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "ReplayEvent"

    const/4 v2, 0x7

    const-string v3, "replay_event"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->ReplayEvent:Lio/sentry/SentryItemType;

    .line 9
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "ReplayRecording"

    const/16 v2, 0x8

    const-string v3, "replay_recording"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->ReplayRecording:Lio/sentry/SentryItemType;

    .line 10
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Unknown"

    const/16 v2, 0x9

    const-string v3, "__unknown__"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Unknown:Lio/sentry/SentryItemType;

    .line 11
    invoke-static {}, Lio/sentry/SentryItemType;->$values()[Lio/sentry/SentryItemType;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryItemType;->$VALUES:[Lio/sentry/SentryItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    return-void
.end method

.method public static resolve(Ljava/lang/Object;)Lio/sentry/SentryItemType;
    .locals 1

    .line 1
    instance-of v0, p0, Lio/sentry/h4;

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lio/sentry/protocol/u;

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Lio/sentry/Session;

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    return-object p0

    .line 7
    :cond_2
    instance-of p0, p0, Lio/sentry/clientreport/b;

    if-eqz p0, :cond_3

    .line 8
    sget-object p0, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    return-object p0

    .line 9
    :cond_3
    sget-object p0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryItemType;
    .locals 1

    const-class v0, Lio/sentry/SentryItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryItemType;

    return-object p0
.end method

.method public static valueOfLabel(Ljava/lang/String;)Lio/sentry/SentryItemType;
    .locals 5
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/SentryItemType;->values()[Lio/sentry/SentryItemType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lio/sentry/SentryItemType;->Unknown:Lio/sentry/SentryItemType;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryItemType;
    .locals 1

    sget-object v0, Lio/sentry/SentryItemType;->$VALUES:[Lio/sentry/SentryItemType;

    invoke-virtual {v0}, [Lio/sentry/SentryItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryItemType;

    return-object v0
.end method


# virtual methods
.method public getItemType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lio/sentry/k1;Lio/sentry/o0;)V
    .locals 0
    .param p1    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    return-void
.end method
