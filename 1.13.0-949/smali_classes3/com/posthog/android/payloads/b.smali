.class public Lcom/posthog/android/payloads/b;
.super Lcom/posthog/android/payloads/BasePayload;
.source "CapturePayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/payloads/b$a;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
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
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/posthog/android/payloads/BasePayload$Type;->capture:Lcom/posthog/android/payloads/BasePayload$Type;

    move-object v0, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/posthog/android/payloads/BasePayload;-><init>(Lcom/posthog/android/payloads/BasePayload$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public B()Lcom/posthog/android/s;
    .locals 2
    .annotation build La/f0;
    .end annotation

    const-class v0, Lcom/posthog/android/s;

    const-string v1, "properties"

    invoke-virtual {p0, v1, v0}, Lcom/posthog/android/x;->m(Ljava/lang/String;Ljava/lang/Class;)Lcom/posthog/android/x;

    move-result-object v0

    check-cast v0, Lcom/posthog/android/s;

    return-object v0
.end method

.method public C()Lcom/posthog/android/payloads/b$a;
    .locals 1
    .annotation build La/f0;
    .end annotation

    new-instance v0, Lcom/posthog/android/payloads/b$a;

    invoke-direct {v0, p0}, Lcom/posthog/android/payloads/b$a;-><init>(Lcom/posthog/android/payloads/b;)V

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build La/f0;
    .end annotation

    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapturePayload{event=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/posthog/android/payloads/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Lcom/posthog/android/x;
    .locals 1
    .annotation build La/f0;
    .end annotation

    invoke-virtual {p0}, Lcom/posthog/android/payloads/b;->B()Lcom/posthog/android/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y()Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1
    .annotation build La/f0;
    .end annotation

    invoke-virtual {p0}, Lcom/posthog/android/payloads/b;->C()Lcom/posthog/android/payloads/b$a;

    move-result-object v0

    return-object v0
.end method
