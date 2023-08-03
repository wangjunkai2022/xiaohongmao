.class public abstract Lcom/posthog/android/payloads/BasePayload;
.super Lcom/posthog/android/x;
.source "BasePayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/payloads/BasePayload$a;,
        Lcom/posthog/android/payloads/BasePayload$Type;
    }
.end annotation


# static fields
.field static final b:Ljava/lang/String; = "type"

.field static final c:Ljava/lang/String; = "event"

.field static final d:Ljava/lang/String; = "message_id"

.field static final e:Ljava/lang/String; = "properties"

.field static final f:Ljava/lang/String; = "timestamp"

.field static final g:Ljava/lang/String; = "distinct_id"


# direct methods
.method constructor <init>(Lcom/posthog/android/payloads/BasePayload$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/posthog/android/payloads/BasePayload$Type;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build La/g0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/android/payloads/BasePayload$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/x;-><init>()V

    const-string v0, "type"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event"

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "message_id"

    .line 4
    invoke-virtual {p0, p1, p3}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p4}, Lcom/posthog/android/internal/Utils;->H(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "timestamp"

    invoke-virtual {p0, p2, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "properties"

    .line 6
    invoke-virtual {p0, p1, p5}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "distinct_id"

    .line 7
    invoke-virtual {p0, p1, p6}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public A()Lcom/posthog/android/payloads/BasePayload$Type;
    .locals 2
    .annotation build La/f0;
    .end annotation

    const-class v0, Lcom/posthog/android/payloads/BasePayload$Type;

    const-string v1, "type"

    invoke-virtual {p0, v0, v1}, Lcom/posthog/android/x;->f(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/posthog/android/payloads/BasePayload$Type;

    return-object v0
.end method

.method public bridge synthetic o(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/x;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/posthog/android/payloads/BasePayload;->w(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/payloads/BasePayload;

    move-result-object p1

    return-object p1
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation build La/g0;
    .end annotation

    const-string v0, "distinct_id"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build La/g0;
    .end annotation

    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1
    .annotation build La/f0;
    .end annotation

    const-string v0, "message_id"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/posthog/android/x;
    .locals 2

    const-class v0, Lcom/posthog/android/x;

    const-string v1, "properties"

    invoke-virtual {p0, v1, v0}, Lcom/posthog/android/x;->m(Ljava/lang/String;Ljava/lang/Class;)Lcom/posthog/android/x;

    move-result-object v0

    return-object v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/payloads/BasePayload;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/posthog/android/x;->o(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/x;

    return-object p0
.end method

.method public x()Ljava/util/Date;
    .locals 2
    .annotation build La/g0;
    .end annotation

    const-string v0, "timestamp"

    .line 1
    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->C(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public abstract y()Lcom/posthog/android/payloads/BasePayload$a;
    .annotation build La/f0;
    .end annotation
.end method
