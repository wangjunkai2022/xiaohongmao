.class public final synthetic Lcom/qennnsad/aknkaksd/util/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/p;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/p;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/p;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/p;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/p;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/p;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/qennnsad/aknkaksd/util/q;->a(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
