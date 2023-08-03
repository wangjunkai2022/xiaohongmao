.class final Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Le5/u1;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;


# direct methods
.method constructor <init>(Le5/u1;Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;->a:Le5/u1;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;->a:Le5/u1;

    iget-object v0, v0, Le5/u1;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;->a:Le5/u1;

    iget-object v0, v0, Le5/u1;->d:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    :try_start_0
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/d;->b()Lcom/facebook/imagepipeline/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->b()V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/n;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v3, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "Error while clearing cache!"

    invoke-virtual {v3, v0, v4}, Ltimber/log/Timber$b;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;->a:Le5/u1;

    iget-object v0, v0, Le5/u1;->h:Landroid/widget/TextView;

    const v3, 0x7f1303ca

    .line 8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/SettingsFragment$b;->a:Le5/u1;

    iget-object v0, v0, Le5/u1;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
