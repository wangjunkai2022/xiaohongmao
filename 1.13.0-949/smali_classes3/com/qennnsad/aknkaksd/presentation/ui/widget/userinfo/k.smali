.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/k;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/k;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/k;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/k;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/l;->r0(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method
