.class public final enum Lcom/posthog/android/PostHog$LogLevel;
.super Ljava/lang/Enum;
.source "PostHog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/PostHog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/android/PostHog$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/posthog/android/PostHog$LogLevel;

.field public static final enum INFO:Lcom/posthog/android/PostHog$LogLevel;

.field public static final enum NONE:Lcom/posthog/android/PostHog$LogLevel;

.field public static final enum VERBOSE:Lcom/posthog/android/PostHog$LogLevel;

.field private static final synthetic a:[Lcom/posthog/android/PostHog$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/posthog/android/PostHog$LogLevel;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/posthog/android/PostHog$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/posthog/android/PostHog$LogLevel;->NONE:Lcom/posthog/android/PostHog$LogLevel;

    .line 2
    new-instance v1, Lcom/posthog/android/PostHog$LogLevel;

    const-string v3, "INFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/posthog/android/PostHog$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/posthog/android/PostHog$LogLevel;->INFO:Lcom/posthog/android/PostHog$LogLevel;

    .line 3
    new-instance v3, Lcom/posthog/android/PostHog$LogLevel;

    const-string v5, "DEBUG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/posthog/android/PostHog$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/posthog/android/PostHog$LogLevel;->DEBUG:Lcom/posthog/android/PostHog$LogLevel;

    .line 4
    new-instance v5, Lcom/posthog/android/PostHog$LogLevel;

    const-string v7, "VERBOSE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/posthog/android/PostHog$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/posthog/android/PostHog$LogLevel;->VERBOSE:Lcom/posthog/android/PostHog$LogLevel;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/posthog/android/PostHog$LogLevel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/posthog/android/PostHog$LogLevel;->a:[Lcom/posthog/android/PostHog$LogLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/android/PostHog$LogLevel;
    .locals 1

    const-class v0, Lcom/posthog/android/PostHog$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/android/PostHog$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/posthog/android/PostHog$LogLevel;
    .locals 1

    sget-object v0, Lcom/posthog/android/PostHog$LogLevel;->a:[Lcom/posthog/android/PostHog$LogLevel;

    invoke-virtual {v0}, [Lcom/posthog/android/PostHog$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/android/PostHog$LogLevel;

    return-object v0
.end method


# virtual methods
.method public log()Z
    .locals 1

    sget-object v0, Lcom/posthog/android/PostHog$LogLevel;->NONE:Lcom/posthog/android/PostHog$LogLevel;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
