.class public final enum Lio/sentry/SentryLevel;
.super Ljava/lang/Enum;
.source "SentryLevel.java"

# interfaces
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryLevel$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryLevel;",
        ">;",
        "Lio/sentry/m1;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryLevel;

.field public static final enum DEBUG:Lio/sentry/SentryLevel;

.field public static final enum ERROR:Lio/sentry/SentryLevel;

.field public static final enum FATAL:Lio/sentry/SentryLevel;

.field public static final enum INFO:Lio/sentry/SentryLevel;

.field public static final enum WARNING:Lio/sentry/SentryLevel;


# direct methods
.method private static synthetic $values()[Lio/sentry/SentryLevel;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lio/sentry/SentryLevel;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/sentry/SentryLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 2
    new-instance v0, Lio/sentry/SentryLevel;

    const-string v1, "INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 3
    new-instance v0, Lio/sentry/SentryLevel;

    const-string v1, "WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 4
    new-instance v0, Lio/sentry/SentryLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 5
    new-instance v0, Lio/sentry/SentryLevel;

    const-string v1, "FATAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 6
    invoke-static {}, Lio/sentry/SentryLevel;->$values()[Lio/sentry/SentryLevel;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryLevel;->$VALUES:[Lio/sentry/SentryLevel;

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

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;
    .locals 1

    const-class v0, Lio/sentry/SentryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryLevel;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryLevel;
    .locals 1

    sget-object v0, Lio/sentry/SentryLevel;->$VALUES:[Lio/sentry/SentryLevel;

    invoke-virtual {v0}, [Lio/sentry/SentryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryLevel;

    return-object v0
.end method


# virtual methods
.method public serialize(Lio/sentry/k1;Lio/sentry/o0;)V
    .locals 1
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

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    return-void
.end method
