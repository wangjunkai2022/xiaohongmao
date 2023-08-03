.class public Lcom/posthog/android/payloads/d$a;
.super Lcom/posthog/android/payloads/BasePayload$a;
.source "IdentifyPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/payloads/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/posthog/android/payloads/BasePayload$a<",
        "Lcom/posthog/android/payloads/d;",
        "Lcom/posthog/android/payloads/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/payloads/BasePayload$a;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/posthog/android/payloads/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/posthog/android/payloads/BasePayload$a;-><init>(Lcom/posthog/android/payloads/BasePayload;)V

    .line 3
    invoke-virtual {p1}, Lcom/posthog/android/payloads/d;->C()Lcom/posthog/android/s;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/d$a;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method bridge synthetic g(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/BasePayload;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build La/f0;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/posthog/android/payloads/d$a;->j(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/d;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic h()Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1

    invoke-virtual {p0}, Lcom/posthog/android/payloads/d$a;->k()Lcom/posthog/android/payloads/d$a;

    move-result-object v0

    return-object v0
.end method

.method j(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/d;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/posthog/android/payloads/d;"
        }
    .end annotation

    new-instance v7, Lcom/posthog/android/payloads/d;

    iget-object v5, p0, Lcom/posthog/android/payloads/BasePayload$a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/posthog/android/payloads/d$a;->g:Ljava/util/Map;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/posthog/android/payloads/d;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v7
.end method

.method k()Lcom/posthog/android/payloads/d$a;
    .locals 0

    return-object p0
.end method

.method public l(Ljava/util/Map;)Lcom/posthog/android/payloads/d$a;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation build La/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/posthog/android/payloads/d$a;"
        }
    .end annotation

    const-string v0, "userProperties"

    .line 1
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/d$a;->g:Ljava/util/Map;

    return-object p0
.end method
