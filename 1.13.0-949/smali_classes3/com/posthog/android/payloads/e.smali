.class public Lcom/posthog/android/payloads/e;
.super Lcom/posthog/android/payloads/BasePayload;
.source "ScreenPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/payloads/e$a;
    }
.end annotation


# static fields
.field static final h:Ljava/lang/String; = "$screen_name"


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
            ")V"
        }
    .end annotation

    .line 1
    sget-object v1, Lcom/posthog/android/payloads/BasePayload$Type;->screen:Lcom/posthog/android/payloads/BasePayload$Type;

    const-string v2, "$screen"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/posthog/android/payloads/BasePayload;-><init>(Lcom/posthog/android/payloads/BasePayload$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)V

    .line 2
    invoke-static {p5}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "$screen_name"

    .line 3
    invoke-interface {p3, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public B()Ljava/lang/String;
    .locals 2
    .annotation build La/g0;
    .end annotation

    invoke-virtual {p0}, Lcom/posthog/android/payloads/e;->C()Lcom/posthog/android/s;

    move-result-object v0

    const-string v1, "$screen_name"

    invoke-virtual {v0, v1}, Lcom/posthog/android/x;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/posthog/android/s;
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

.method public D()Lcom/posthog/android/payloads/e$a;
    .locals 1
    .annotation build La/f0;
    .end annotation

    new-instance v0, Lcom/posthog/android/payloads/e$a;

    invoke-direct {v0, p0}, Lcom/posthog/android/payloads/e$a;-><init>(Lcom/posthog/android/payloads/e;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenPayload{name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/posthog/android/payloads/e;->B()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/posthog/android/payloads/e;->C()Lcom/posthog/android/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y()Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1
    .annotation build La/f0;
    .end annotation

    invoke-virtual {p0}, Lcom/posthog/android/payloads/e;->D()Lcom/posthog/android/payloads/e$a;

    move-result-object v0

    return-object v0
.end method
