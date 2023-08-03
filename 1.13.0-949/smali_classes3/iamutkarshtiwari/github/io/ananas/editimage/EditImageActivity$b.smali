.class final Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$b;
.super Ljava/lang/Object;
.source "EditImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;


# direct methods
.method private constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget v0, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->A:Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;->X()V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->z:Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;->X()V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->y:Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->c0()V

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->x:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->n0()V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->w:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->j0()V

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->v:Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->d0()V

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->u:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->h0()V

    goto :goto_0

    .line 9
    :pswitch_7
    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->t:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;->e0()V

    goto :goto_0

    .line 10
    :pswitch_8
    iget-object p1, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->s:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->e0()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
