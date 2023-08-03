.class public Lmaster/flame/danmaku/controller/b$d;
.super Lmaster/flame/danmaku/controller/b$a;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmaster/flame/danmaku/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmaster/flame/danmaku/controller/b$a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/b$a;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmaster/flame/danmaku/controller/b$d;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/controller/b$d;->c(Ljava/lang/Boolean;)V

    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b$d;->a:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->D:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p1, Lmaster/flame/danmaku/danmaku/model/d;->G:I

    :cond_1
    return p2
.end method

.method public c(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/controller/b$d;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public reset()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmaster/flame/danmaku/controller/b$d;->a:Ljava/lang/Boolean;

    return-void
.end method
