.class public final synthetic Liamutkarshtiwari/github/io/ananas/editimage/fragment/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/q;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/q;->b:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/q;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/q;->b:I

    invoke-static {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;->Z(Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
