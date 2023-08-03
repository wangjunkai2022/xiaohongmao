.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/base/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/h;->a:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/h;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/h;->a:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/h;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->l0(Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lkotlin/jvm/functions/Function1;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
