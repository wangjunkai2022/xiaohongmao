.class public final synthetic Liamutkarshtiwari/github/io/ananas/editimage/fragment/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/i;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/i;->b:I

    iput p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/i;->c:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/i;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/i;->b:I

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/i;->c:I

    invoke-static {v0, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->a0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
