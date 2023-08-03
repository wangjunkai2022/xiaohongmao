.class Lmaster/flame/danmaku/ui/widget/b$a;
.super Ljava/lang/Object;
.source "FakeDanmakuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmaster/flame/danmaku/ui/widget/b;->L(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lmaster/flame/danmaku/ui/widget/b;


# direct methods
.method constructor <init>(Lmaster/flame/danmaku/ui/widget/b;I)V
    .locals 0

    iput-object p1, p0, Lmaster/flame/danmaku/ui/widget/b$a;->b:Lmaster/flame/danmaku/ui/widget/b;

    iput p2, p0, Lmaster/flame/danmaku/ui/widget/b$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmaster/flame/danmaku/ui/widget/b$a;->b:Lmaster/flame/danmaku/ui/widget/b;

    iget v1, p0, Lmaster/flame/danmaku/ui/widget/b$a;->a:I

    invoke-virtual {v0, v1}, Lmaster/flame/danmaku/ui/widget/b;->L(I)V

    return-void
.end method
