.class public final synthetic Liamutkarshtiwari/github/io/ananas/editimage/layout/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;

.field public final synthetic b:Landroid/view/ScaleGestureDetector;


# direct methods
.method public synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;Landroid/view/ScaleGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/a;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/a;->b:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/a;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/a;->b:Landroid/view/ScaleGestureDetector;

    invoke-static {v0, v1, p1, p2}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;->a(Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
