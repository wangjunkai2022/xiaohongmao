.class public final synthetic Lcom/qennnsad/aknkaksd/util/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/d;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/d;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/d;->b:Ljava/util/List;

    invoke-static {v0, v1, p1, p2}, Lcom/qennnsad/aknkaksd/util/l;->j(Lkotlin/jvm/functions/Function1;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
