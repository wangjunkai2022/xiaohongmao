.class public final synthetic Lcom/im/freechat/base/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/base/f;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/base/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/base/e;->a:Lcom/im/freechat/base/f;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/base/e;->a:Lcom/im/freechat/base/f;

    check-cast p1, Lo4/a;

    invoke-static {v0, p1}, Lcom/im/freechat/base/f;->V(Lcom/im/freechat/base/f;Lo4/a;)V

    return-void
.end method
