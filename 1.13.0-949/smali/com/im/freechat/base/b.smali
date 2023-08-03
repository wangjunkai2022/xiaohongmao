.class public final synthetic Lcom/im/freechat/base/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/base/BaseViewModelActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/base/BaseViewModelActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/base/b;->a:Lcom/im/freechat/base/BaseViewModelActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/base/b;->a:Lcom/im/freechat/base/BaseViewModelActivity;

    check-cast p1, Lo4/a;

    invoke-static {v0, p1}, Lcom/im/freechat/base/BaseViewModelActivity;->G(Lcom/im/freechat/base/BaseViewModelActivity;Lo4/a;)V

    return-void
.end method
