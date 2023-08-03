.class public Lcom/koushikdutta/async/util/TimeoutBase;
.super Ljava/lang/Object;
.source "TimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;
    }
.end annotation


# instance fields
.field protected a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

.field protected b:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;J)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p2, p0, Lcom/koushikdutta/async/util/TimeoutBase;->b:J

    .line 6
    new-instance p2, Lcom/koushikdutta/async/util/TimeoutBase$2;

    invoke-direct {p2, p0, p1}, Lcom/koushikdutta/async/util/TimeoutBase$2;-><init>(Lcom/koushikdutta/async/util/TimeoutBase;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/koushikdutta/async/util/TimeoutBase;->a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/koushikdutta/async/util/TimeoutBase;->b:J

    .line 3
    new-instance p2, Lcom/koushikdutta/async/util/TimeoutBase$1;

    invoke-direct {p2, p0, p1}, Lcom/koushikdutta/async/util/TimeoutBase$1;-><init>(Lcom/koushikdutta/async/util/TimeoutBase;Lcom/koushikdutta/async/AsyncServer;)V

    iput-object p2, p0, Lcom/koushikdutta/async/util/TimeoutBase;->a:Lcom/koushikdutta/async/util/TimeoutBase$Handlerish;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/koushikdutta/async/util/TimeoutBase;->b:J

    return-void
.end method
