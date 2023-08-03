.class public final synthetic Landroidx/navigation/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/navigation/NavDirections;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavDirections;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/c;->a:Landroidx/navigation/NavDirections;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/navigation/c;->a:Landroidx/navigation/NavDirections;

    invoke-static {v0, p1}, Landroidx/navigation/Navigation;->a(Landroidx/navigation/NavDirections;Landroid/view/View;)V

    return-void
.end method
