.class public final synthetic Lcom/im/freechat/ui/chat/holder/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/e;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/e;->a:Lcom/im/freechat/ui/chat/holder/BaseChatHolder;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/chat/holder/BaseChatHolder;->k(Lcom/im/freechat/ui/chat/holder/BaseChatHolder;Landroid/animation/ValueAnimator;)V

    return-void
.end method
