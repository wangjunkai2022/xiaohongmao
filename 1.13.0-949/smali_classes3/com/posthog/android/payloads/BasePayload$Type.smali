.class public final enum Lcom/posthog/android/payloads/BasePayload$Type;
.super Ljava/lang/Enum;
.source "BasePayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/payloads/BasePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/posthog/android/payloads/BasePayload$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/posthog/android/payloads/BasePayload$Type;

.field public static final enum alias:Lcom/posthog/android/payloads/BasePayload$Type;

.field public static final enum capture:Lcom/posthog/android/payloads/BasePayload$Type;

.field public static final enum group:Lcom/posthog/android/payloads/BasePayload$Type;

.field public static final enum identify:Lcom/posthog/android/payloads/BasePayload$Type;

.field public static final enum screen:Lcom/posthog/android/payloads/BasePayload$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/posthog/android/payloads/BasePayload$Type;

    const-string v1, "alias"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/posthog/android/payloads/BasePayload$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/posthog/android/payloads/BasePayload$Type;->alias:Lcom/posthog/android/payloads/BasePayload$Type;

    .line 2
    new-instance v1, Lcom/posthog/android/payloads/BasePayload$Type;

    const-string v3, "identify"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/posthog/android/payloads/BasePayload$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/posthog/android/payloads/BasePayload$Type;->identify:Lcom/posthog/android/payloads/BasePayload$Type;

    .line 3
    new-instance v3, Lcom/posthog/android/payloads/BasePayload$Type;

    const-string v5, "screen"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/posthog/android/payloads/BasePayload$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/posthog/android/payloads/BasePayload$Type;->screen:Lcom/posthog/android/payloads/BasePayload$Type;

    .line 4
    new-instance v5, Lcom/posthog/android/payloads/BasePayload$Type;

    const-string v7, "capture"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/posthog/android/payloads/BasePayload$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/posthog/android/payloads/BasePayload$Type;->capture:Lcom/posthog/android/payloads/BasePayload$Type;

    .line 5
    new-instance v7, Lcom/posthog/android/payloads/BasePayload$Type;

    const-string v9, "group"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/posthog/android/payloads/BasePayload$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/posthog/android/payloads/BasePayload$Type;->group:Lcom/posthog/android/payloads/BasePayload$Type;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/posthog/android/payloads/BasePayload$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/posthog/android/payloads/BasePayload$Type;->a:[Lcom/posthog/android/payloads/BasePayload$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/posthog/android/payloads/BasePayload$Type;
    .locals 1

    const-class v0, Lcom/posthog/android/payloads/BasePayload$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/posthog/android/payloads/BasePayload$Type;

    return-object p0
.end method

.method public static values()[Lcom/posthog/android/payloads/BasePayload$Type;
    .locals 1

    sget-object v0, Lcom/posthog/android/payloads/BasePayload$Type;->a:[Lcom/posthog/android/payloads/BasePayload$Type;

    invoke-virtual {v0}, [Lcom/posthog/android/payloads/BasePayload$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/posthog/android/payloads/BasePayload$Type;

    return-object v0
.end method
