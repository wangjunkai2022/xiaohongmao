.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

.field public final synthetic b:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/l;->b:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/l;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/l;->b:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, p1}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->n1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Landroid/widget/FrameLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method
