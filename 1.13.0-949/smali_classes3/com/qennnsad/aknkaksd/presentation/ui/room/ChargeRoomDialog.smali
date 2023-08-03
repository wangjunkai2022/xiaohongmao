.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;
.super Landroid/app/DialogFragment;
.source "ChargeRoomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "TIME"

.field public static final e:Ljava/lang/String; = "TICKET"


# instance fields
.field a:Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog$a;

.field private b:Z

.field c:Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a01f1

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01f2

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01ef

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01f0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "str:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "privateStringSet"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog$a;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "TICKET"

    invoke-interface {p2, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog$a;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "4"

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog$a;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "TIME"

    invoke-interface {p2, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog$a;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public d(Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog$a;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog$a;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;

    .line 3
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/d;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;->l(Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog$a;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/create/PrivateSetStringDialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a01ef
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const p3, 0x1020002

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    const v0, 0x7f0d004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, -0x1

    const/4 v0, -0x2

    .line 4
    invoke-virtual {p2, p3, v0}, Landroid/view/Window;->setLayout(II)V

    .line 5
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->b(Landroid/view/View;)V

    return-object p1
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargeRoomDialog isFragmentShown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChargeRoomDialog"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/ChargeRoomDialog;->b:Z

    .line 4
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
