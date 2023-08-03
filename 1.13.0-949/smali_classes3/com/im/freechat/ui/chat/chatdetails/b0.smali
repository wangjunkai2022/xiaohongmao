.class public final synthetic Lcom/im/freechat/ui/chat/chatdetails/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/chatdetails/b0;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iput-object p2, p0, Lcom/im/freechat/ui/chat/chatdetails/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/im/freechat/ui/chat/chatdetails/b0;->a:Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;

    iget-object v2, v0, Lcom/im/freechat/ui/chat/chatdetails/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;->a1(Lcom/im/freechat/ui/chat/chatdetails/ChatDetailsFragment;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIIIIIII)V

    return-void
.end method
