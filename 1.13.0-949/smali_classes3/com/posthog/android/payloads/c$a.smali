.class public Lcom/posthog/android/payloads/c$a;
.super Lcom/posthog/android/payloads/BasePayload$a;
.source "GroupPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/payloads/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/posthog/android/payloads/BasePayload$a<",
        "Lcom/posthog/android/payloads/c;",
        "Lcom/posthog/android/payloads/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
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

.method constructor <init>(Lcom/posthog/android/payloads/c;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/posthog/android/payloads/BasePayload$a;-><init>(Lcom/posthog/android/payloads/BasePayload;)V

    .line 3
    invoke-virtual {p1}, Lcom/posthog/android/payloads/c;->D()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/payloads/c$a;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/posthog/android/payloads/c;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/payloads/c$a;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/posthog/android/payloads/BasePayload;->v()Lcom/posthog/android/x;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/c$a;->i:Ljava/util/Map;

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/posthog/android/payloads/c$a;->m(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/c;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic h()Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1

    invoke-virtual {p0}, Lcom/posthog/android/payloads/c$a;->n()Lcom/posthog/android/payloads/c$a;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Lcom/posthog/android/payloads/c$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation build La/f0;
    .end annotation

    const-string v0, "groupKey"

    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/c$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/util/Map;)Lcom/posthog/android/payloads/c$a;
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
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/posthog/android/payloads/c$a;"
        }
    .end annotation

    const-string v0, "groupProperties"

    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/posthog/android/payloads/c$a;->i:Ljava/util/Map;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/posthog/android/payloads/c$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation build La/f0;
    .end annotation

    const-string v0, "groupType"

    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/c$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method protected m(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/c;
    .locals 9
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
            "Lcom/posthog/android/payloads/c;"
        }
    .end annotation

    new-instance v8, Lcom/posthog/android/payloads/c;

    iget-object v5, p0, Lcom/posthog/android/payloads/c$a;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/posthog/android/payloads/c$a;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/posthog/android/payloads/c$a;->i:Ljava/util/Map;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/posthog/android/payloads/c;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v8
.end method

.method n()Lcom/posthog/android/payloads/c$a;
    .locals 0

    return-object p0
.end method
