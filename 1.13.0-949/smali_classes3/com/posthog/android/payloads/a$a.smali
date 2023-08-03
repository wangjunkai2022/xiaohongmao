.class public final Lcom/posthog/android/payloads/a$a;
.super Lcom/posthog/android/payloads/BasePayload$a;
.source "AliasPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/payloads/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/posthog/android/payloads/BasePayload$a<",
        "Lcom/posthog/android/payloads/a;",
        "Lcom/posthog/android/payloads/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/payloads/BasePayload$a;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/posthog/android/payloads/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/posthog/android/payloads/BasePayload$a;-><init>(Lcom/posthog/android/payloads/BasePayload;)V

    .line 3
    invoke-virtual {p1}, Lcom/posthog/android/payloads/a;->B()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/a$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic g(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/BasePayload;
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
    .param p4    # Ljava/lang/String;
        .annotation build La/g0;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/posthog/android/payloads/a$a;->k(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/a;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic h()Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1

    invoke-virtual {p0}, Lcom/posthog/android/payloads/a$a;->l()Lcom/posthog/android/payloads/a$a;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Lcom/posthog/android/payloads/a$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation build La/f0;
    .end annotation

    const-string v0, "alias"

    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/a$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method protected k(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/a;
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
    .param p4    # Ljava/lang/String;
        .annotation build La/g0;
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
            "Lcom/posthog/android/payloads/a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/payloads/a$a;->g:Ljava/lang/String;

    const-string v1, "alias"

    invoke-static {v0, v1}, Lcom/posthog/android/internal/Utils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/posthog/android/payloads/a;

    iget-object v7, p0, Lcom/posthog/android/payloads/a$a;->g:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/posthog/android/payloads/a;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method l()Lcom/posthog/android/payloads/a$a;
    .locals 0

    return-object p0
.end method
