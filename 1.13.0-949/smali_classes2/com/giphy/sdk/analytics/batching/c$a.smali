.class public final Lcom/giphy/sdk/analytics/batching/c$a;
.super Ljava/lang/Object;
.source "PingbackSubmissionQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/analytics/batching/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u000c\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/giphy/sdk/analytics/batching/c$a;",
        "",
        "",
        "maximumQueuedSessions",
        "I",
        "b",
        "()I",
        "e",
        "(I)V",
        "",
        "delayAfterFailure",
        "J",
        "a",
        "()J",
        "d",
        "(J)V",
        "maximumRetriesCount",
        "c",
        "f",
        "<init>",
        "()V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/analytics/batching/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Lcom/giphy/sdk/analytics/batching/c;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()I
    .locals 1

    invoke-static {}, Lcom/giphy/sdk/analytics/batching/c;->b()I

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 2

    invoke-static {}, Lcom/giphy/sdk/analytics/batching/c;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/giphy/sdk/analytics/batching/c;->f(J)V

    return-void
.end method

.method public final e(I)V
    .locals 0

    invoke-static {p1}, Lcom/giphy/sdk/analytics/batching/c;->g(I)V

    return-void
.end method

.method public final f(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/giphy/sdk/analytics/batching/c;->h(J)V

    return-void
.end method
