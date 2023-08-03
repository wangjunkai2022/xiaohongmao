.class Lcom/lljjcoder/style/citylist/utils/CityListLoader$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "CityListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citylist/utils/CityListLoader;->loadCityData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/ArrayList<",
        "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citylist/utils/CityListLoader;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citylist/utils/CityListLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/utils/CityListLoader$1;->this$0:Lcom/lljjcoder/style/citylist/utils/CityListLoader;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
