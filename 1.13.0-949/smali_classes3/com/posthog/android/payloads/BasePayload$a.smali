.class public abstract Lcom/posthog/android/payloads/BasePayload$a;
.super Ljava/lang/Object;
.source "BasePayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/payloads/BasePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/posthog/android/payloads/BasePayload;",
        "B:",
        "Lcom/posthog/android/payloads/BasePayload$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/String;

.field private f:Ljava/util/Map;
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
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/posthog/android/payloads/BasePayload;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/posthog/android/payloads/BasePayload;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/posthog/android/payloads/BasePayload;->x()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->c:Ljava/util/Date;

    .line 5
    invoke-virtual {p1}, Lcom/posthog/android/payloads/BasePayload;->v()Lcom/posthog/android/x;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->d:Ljava/util/Map;

    .line 6
    invoke-virtual {p1}, Lcom/posthog/android/payloads/BasePayload;->s()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/BasePayload$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation build La/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    const-string v0, "anonymousId"

    .line 1
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/BasePayload$a;->e:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/posthog/android/payloads/BasePayload$a;->h()Lcom/posthog/android/payloads/BasePayload$a;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/posthog/android/payloads/BasePayload;
    .locals 4
    .annotation build La/f0;
    .end annotation

    .annotation build La/j;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "either distinctId or anonymousId is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->b:Ljava/lang/String;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->c:Ljava/util/Date;

    if-nez v0, :cond_3

    .line 6
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->c:Ljava/util/Date;

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->y(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->d:Ljava/util/Map;

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->f:Ljava/util/Map;

    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->y(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/posthog/android/payloads/BasePayload$a;->f:Ljava/util/Map;

    .line 11
    :cond_5
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/posthog/android/payloads/BasePayload$a;->f:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 12
    iget-object v1, p0, Lcom/posthog/android/payloads/BasePayload$a;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 13
    iget-object v1, p0, Lcom/posthog/android/payloads/BasePayload$a;->a:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    iget-object v1, p0, Lcom/posthog/android/payloads/BasePayload$a;->e:Ljava/lang/String;

    .line 16
    :cond_6
    iget-object v2, p0, Lcom/posthog/android/payloads/BasePayload$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/posthog/android/payloads/BasePayload$a;->c:Ljava/util/Date;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/posthog/android/payloads/BasePayload$a;->g(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/BasePayload;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/Map;)Lcom/posthog/android/payloads/BasePayload$a;
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
            "*>;)TB;"
        }
    .end annotation

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/BasePayload$a;->f:Ljava/util/Map;

    .line 3
    invoke-virtual {p0}, Lcom/posthog/android/payloads/BasePayload$a;->h()Lcom/posthog/android/payloads/BasePayload$a;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation build La/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    const-string v0, "distinctId"

    .line 1
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/BasePayload$a;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/posthog/android/payloads/BasePayload$a;->h()Lcom/posthog/android/payloads/BasePayload$a;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation build La/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    const-string v0, "messageId"

    .line 1
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/posthog/android/payloads/BasePayload$a;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/posthog/android/payloads/BasePayload$a;->h()Lcom/posthog/android/payloads/BasePayload$a;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/util/Map;)Lcom/posthog/android/payloads/BasePayload$a;
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
            "*>;)TB;"
        }
    .end annotation

    const-string v0, "properties"

    .line 1
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/BasePayload$a;->d:Ljava/util/Map;

    .line 3
    invoke-virtual {p0}, Lcom/posthog/android/payloads/BasePayload$a;->h()Lcom/posthog/android/payloads/BasePayload$a;

    move-result-object p1

    return-object p1
.end method

.method abstract g(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/BasePayload;
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
            ")TP;"
        }
    .end annotation
.end method

.method abstract h()Lcom/posthog/android/payloads/BasePayload$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public i(Ljava/util/Date;)Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation build La/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TB;"
        }
    .end annotation

    const-string v0, "timestamp"

    .line 1
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/posthog/android/payloads/BasePayload$a;->c:Ljava/util/Date;

    .line 3
    invoke-virtual {p0}, Lcom/posthog/android/payloads/BasePayload$a;->h()Lcom/posthog/android/payloads/BasePayload$a;

    move-result-object p1

    return-object p1
.end method
