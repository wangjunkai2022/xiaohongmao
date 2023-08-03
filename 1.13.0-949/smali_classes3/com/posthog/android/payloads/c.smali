.class public Lcom/posthog/android/payloads/c;
.super Lcom/posthog/android/payloads/BasePayload;
.source "GroupPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/payloads/c$a;
    }
.end annotation


# static fields
.field static final h:Ljava/lang/String; = "$group_type"

.field static final i:Ljava/lang/String; = "$group_key"

.field static final j:Ljava/lang/String; = "$group_set"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
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
    .param p5    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v1, Lcom/posthog/android/payloads/BasePayload$Type;->group:Lcom/posthog/android/payloads/BasePayload$Type;

    const-string v2, "$groupidentify"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/posthog/android/payloads/BasePayload;-><init>(Lcom/posthog/android/payloads/BasePayload$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)V

    const-string p1, "$group_type"

    .line 2
    invoke-virtual {p0, p1, p5}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "$group_key"

    .line 3
    invoke-virtual {p0, p1, p6}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "$group_set"

    .line 4
    invoke-virtual {p0, p1, p7}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 1
    .annotation build La/f0;
    .end annotation

    const-string v0, "$group_key"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/util/Map;
    .locals 2
    .annotation build La/g0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/posthog/android/s;

    const-string v1, "$group_set"

    invoke-virtual {p0, v1, v0}, Lcom/posthog/android/x;->m(Ljava/lang/String;Ljava/lang/Class;)Lcom/posthog/android/x;

    move-result-object v0

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1
    .annotation build La/f0;
    .end annotation

    const-string v0, "$group_type"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/posthog/android/payloads/c$a;
    .locals 1
    .annotation build La/f0;
    .end annotation

    new-instance v0, Lcom/posthog/android/payloads/c$a;

    invoke-direct {v0, p0}, Lcom/posthog/android/payloads/c$a;-><init>(Lcom/posthog/android/payloads/c;)V

    return-object v0
.end method

.method public bridge synthetic y()Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1
    .annotation build La/f0;
    .end annotation

    invoke-virtual {p0}, Lcom/posthog/android/payloads/c;->E()Lcom/posthog/android/payloads/c$a;

    move-result-object v0

    return-object v0
.end method
