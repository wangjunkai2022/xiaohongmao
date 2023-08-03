.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/k0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/k0;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/k0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/chat/chatdetails/k0;->a:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/im/freechat/ui/chat/chatdetails/k0;->b:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    invoke-static {v0, v1, p1, p2}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->A0(Lkotlin/jvm/internal/Ref$IntRef;Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
