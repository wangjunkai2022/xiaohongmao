.class public final synthetic Ll4/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ll4/e;


# direct methods
.method public synthetic constructor <init>(Ll4/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4/c;->a:Ll4/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ll4/c;->a:Ll4/e;

    invoke-static {v0, p1}, Ll4/e;->W(Ll4/e;Landroid/view/View;)V

    return-void
.end method
