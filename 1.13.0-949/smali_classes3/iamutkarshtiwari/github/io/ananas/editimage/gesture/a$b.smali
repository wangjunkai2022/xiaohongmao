.class final Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;


# direct methods
.method private constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->a(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)Li7/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->a(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)Li7/b;

    move-result-object p1

    invoke-interface {p1}, Li7/b;->b()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->a(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)Li7/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->a(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)Li7/b;

    move-result-object p1

    invoke-interface {p1}, Li7/b;->c()V

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->a(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)Li7/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;->a(Liamutkarshtiwari/github/io/ananas/editimage/gesture/a;)Li7/b;

    move-result-object p1

    invoke-interface {p1}, Li7/b;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
