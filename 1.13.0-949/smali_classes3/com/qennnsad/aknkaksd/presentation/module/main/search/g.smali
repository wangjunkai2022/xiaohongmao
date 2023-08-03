.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/search/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;

.field public final synthetic b:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/g;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/g;->b:Landroidx/appcompat/widget/SearchView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/g;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/search/g;->b:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;->x0(Lcom/qennnsad/aknkaksd/presentation/module/main/search/SearchUserFragment;Landroidx/appcompat/widget/SearchView;)V

    return-void
.end method
