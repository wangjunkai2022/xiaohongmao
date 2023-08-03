.class public Liamutkarshtiwari/github/io/ananas/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static G(Landroid/content/Context;IZ)Landroid/app/Dialog;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Liamutkarshtiwari/github/io/ananas/BaseActivity;->H(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static H(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 1

    .line 1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method
