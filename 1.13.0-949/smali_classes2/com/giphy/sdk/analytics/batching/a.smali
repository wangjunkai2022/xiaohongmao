.class public final Lcom/giphy/sdk/analytics/batching/a;
.super Ljava/lang/Object;
.source "AnalyticsId.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002R$\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0005\u001a\u0004\u0008\n\u0010\u0007R\u0017\u0010\r\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0005\u001a\u0004\u0008\t\u0010\u0007R\u0017\u0010\u0012\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000f\u001a\u0004\u0008\u000c\u0010\u0011\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/giphy/sdk/analytics/batching/a;",
        "",
        "",
        "a",
        "<set-?>",
        "Ljava/lang/String;",
        "d",
        "()Ljava/lang/String;",
        "pingbackId",
        "b",
        "e",
        "verificationID",
        "c",
        "apikey",
        "",
        "Z",
        "f",
        "()Z",
        "isMainInstance",
        "enableVerificationMode",
        "<init>",
        "(Ljava/lang/String;ZZ)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "apikey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/a;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/giphy/sdk/analytics/batching/a;->d:Z

    iput-boolean p3, p0, Lcom/giphy/sdk/analytics/batching/a;->e:Z

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/a;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/a;->b:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/giphy/sdk/analytics/tracking/a;

    invoke-direct {p0}, Lcom/giphy/sdk/analytics/batching/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/giphy/sdk/analytics/tracking/a;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/tracking/a;->b()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/giphy/sdk/analytics/batching/a;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/giphy/sdk/analytics/tracking/a;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/a;->b:Ljava/lang/String;

    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/giphy/sdk/analytics/batching/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lg2/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PINGBACK"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/giphy/sdk/analytics/batching/a;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/giphy/sdk/analytics/batching/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/giphy/sdk/analytics/batching/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/analytics/batching/a;->e:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/analytics/batching/a;->d:Z

    return v0
.end method
