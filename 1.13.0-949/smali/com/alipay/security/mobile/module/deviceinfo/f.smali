.class final Lcom/alipay/security/mobile/module/deviceinfo/f;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/alipay/security/mobile/module/deviceinfo/g;

.field final synthetic b:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/deviceinfo/g;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->a:Lcom/alipay/security/mobile/module/deviceinfo/g;

    iput-object p2, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->b:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->a:Lcom/alipay/security/mobile/module/deviceinfo/g;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/g;->s(I)V

    :cond_0
    iget-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/f;->b:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
