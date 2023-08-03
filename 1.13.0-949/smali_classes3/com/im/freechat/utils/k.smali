.class public final synthetic Lcom/im/freechat/utils/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# instance fields
.field public final synthetic a:Lcom/im/freechat/utils/MessageEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/utils/MessageEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/utils/k;->a:Lcom/im/freechat/utils/MessageEditText;

    return-void
.end method


# virtual methods
.method public final onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/utils/k;->a:Lcom/im/freechat/utils/MessageEditText;

    invoke-static {v0, p1, p2, p3}, Lcom/im/freechat/utils/MessageEditText;->a(Lcom/im/freechat/utils/MessageEditText;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
