.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/contributors/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Le5/e1;


# direct methods
.method public synthetic constructor <init>(Le5/e1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/f;->a:Le5/e1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/f;->a:Le5/e1;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsFragment;->y0(Le5/e1;Ljava/lang/String;)V

    return-void
.end method
