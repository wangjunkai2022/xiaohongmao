.class Lcom/lljjcoder/style/citylist/CityListSelectActivity$4;
.super Ljava/lang/Object;
.source "CityListSelectActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citylist/CityListSelectActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citylist/CityListSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$4;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$4;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->access$200(Lcom/lljjcoder/style/citylist/CityListSelectActivity;Ljava/lang/String;)V

    return-void
.end method
