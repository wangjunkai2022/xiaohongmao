.class public final synthetic Lcom/im/freechat/utils/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/utils/o;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/im/freechat/utils/o;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/utils/o;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/im/freechat/utils/o;->b:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p1, p2}, Lcom/im/freechat/utils/r;->c(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;I)V

    return-void
.end method
