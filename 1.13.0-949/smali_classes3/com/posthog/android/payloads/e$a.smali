.class public Lcom/posthog/android/payloads/e$a;
.super Lcom/posthog/android/payloads/BasePayload$a;
.source "ScreenPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/payloads/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/posthog/android/payloads/BasePayload$a<",
        "Lcom/posthog/android/payloads/e;",
        "Lcom/posthog/android/payloads/e$a;",
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

.method constructor <init>(Lcom/posthog/android/payloads/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/posthog/android/payloads/BasePayload$a;-><init>(Lcom/posthog/android/payloads/BasePayload;)V

    .line 3
    invoke-virtual {p1}, Lcom/posthog/android/payloads/e;->B()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/posthog/android/payloads/e$a;->g:Ljava/lang/String;

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/posthog/android/payloads/e$a;->k(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/e;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic h()Lcom/posthog/android/payloads/BasePayload$a;
    .locals 1

    invoke-virtual {p0}, Lcom/posthog/android/payloads/e$a;->l()Lcom/posthog/android/payloads/e$a;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Lcom/posthog/android/payloads/e$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build La/g0;
        .end annotation
    .end param
    .annotation build La/f0;
    .end annotation

    iput-object p1, p0, Lcom/posthog/android/payloads/e$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method protected k(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;)Lcom/posthog/android/payloads/e;
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
            "Lcom/posthog/android/payloads/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/posthog/android/payloads/e$a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/posthog/android/payloads/e;

    iget-object v6, p0, Lcom/posthog/android/payloads/e$a;->g:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/posthog/android/payloads/e;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name is required"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method l()Lcom/posthog/android/payloads/e$a;
    .locals 0

    return-object p0
.end method
