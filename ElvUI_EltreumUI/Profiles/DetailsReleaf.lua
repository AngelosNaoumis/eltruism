local ElvUI_EltreumUI, E, L, V, P, G = unpack(select(2, ...))

-- Details profile setup
function ElvUI_EltreumUI:GetDetailsProfileReleaf()

	local dtprofileRetail = "T336YTnsYA(SSX(JT7iowlkGc32j2FqzjzRXsu(ik3(0r4qqGKqIieibhaqlREJrp77xMvv4gbPO7Z09CU4j6XuKOUKvEpZQYc3kU9MBNSUi)(0Se6plxK)uuCrYQ4OI8SKO0z5RUD6TtMfVUAtrsursCg1Uf0NhJ2VojlBwCzf9LLPLZMhxft)D8Mc(ZKvjfp8m9xZJxg)qc(RQBNuGz5(45y8xHrBS42j4pgBF7yRJSPNVol(5KIO5jvXPzLrpLUAE(tm8nlgak1HPXfrvjFJGQBNm5XNZsxH)O8rmqton7RF6CACIZYIuJvjTQIEOiFZAA9SPeRfAPUkDzCvA(QscelswNxufrlUimEpwsnTizz(xvR8Lr3xKVmAv8Ye16f9EZYi84cAMMLVCACvuv6sceTWI)RjRW3lIN9ysbb(aVonlzonS3NJhnlplVqHbO)ZM)xh(FL0)ILaTUaeL(WIk8lE6FODhTosOXDQoZFkPpDObGNOYfXegCY4RgFQ5Ns)nnyYF9(4za)Dwr6V9YD)RBINxac5l3Dda67lO1RH5OkTkJx9LvutUDYfx9zIAm7X5f5R7dyEgiZZaAEAyt6ZRUCGAy8Hzj6ybi6P05vlqxDTQrb106tumfVC3KeWNMw98TtYxZKWidKwX8ykIzvE0tlYVDcyatIRweLL)GcilPL08KPBU)EWWTPynwwyTMMSAE2Z3Nst184IhZlIxb2wfh)Khkssad2S88mGpXF9m4)jeRM7gZ6CMbwjsfvgdwN15m3fXZb(dG(i2WvZJktkaNt064c8xeoyn4sNoTi5RPmpjHYM8uEr2CdRvAjXnvUGzHxdznmdRtWuEMVTLRVBqOV0o0ZYZ(27FJRlOl55pUeRcg9zi5q6PMVx1)iWkJb(RjzmPbDC1MLjfPqAlQ85YQKL4JLtZZkjj7kGozPx1CtuvxIMrcPL7vUoDvzv8QzjLrltwTjAww6Shjku(6ewntTKuwceVxL80Sf4RjRy9gtMTPOGeOMVM6F1VBrkL(nthp(vfrcGO(ZvlsNfnFdafG0633Dl8ugVCnXhWJK7WcttpiHjfEujgPLHShweYZTrcYMLG08kGidwU4mLUHHfBif4m(F1M1KWs(MkASBOCRYHUXPAvY4jmdja1vZWuSc)F2Ebb5rtFwBlPkjEjBvOlBhwmamMNwsyZiGdsQMTqPJTcsyqfpnwMNtl0iqaiD4rt3uvP1AVekOlEoclcS0LnTxbIkD(LkKC8kisdbpYkrNfv5M1RlsknIxaddvd3hVjRkA6drXzRxetin3gK2a2KQgqUk(Bg5kSsjldrvpVoHOLA9r0cTkDDKMG542wHmRJIevGC3hU8M38H0LttkYsEUzUaEBgmvNPjfafLsIRzj0KscnSOKgTPyzRx2kwlmfrSok8hRYlwQSW)8TN9g)axpHxGe6wS89KbqPIei4VD7zUbEHEU2wHoEHbwQNqkRifrs)q)qlNqVappxp6jaTTa9X1luei99fEwszGL6jyHucMf1usOLVX6nEsBjG4HTSuSMlsznl12zzePqHGypvkvYzN5J5vicDde2(b2we056OBhw4lAuqOTpbyaJn93yAabVGhxE(a)Fu(965SfRTM)BVkA0mXmSfXUyn5CseKiTFz085xTQ8lAZzFjLSFu(L2DPmYw5rt0SnLv5ljJyeRbeusx9qzdldraFkUKvJQiXLpLsIsKUuYpUYg0gVei9UvlahXdlmsA8espewOksXYtzYTTkwACvkjp2GWawITSCaADvRb1Go5)h5d1Fx3zL2ZgE7jDOrkfFSRmADMlvwlvGvu7XDQEe1kUv2CEam1jqses30aquv2yB2MhGKaPF4PO5WE)mLnx72muky4y6xpMaIJP1ZXKMC8pESsL1e0p(n2Tqov1eaLBbm4s2nJywkA4j8AwY9SFZfSA7Pu306SACZvXZR9c3WCuJ7bR6d9fbARScpFk)Cn4qoXapo6YmSFJm1cE5uNwP5juQnAz7nDfmDxYiwyGzd7zj1xmEhydDo0gkp0g6EOn07qBO)H2WGdTHHhAdHJ6hAlpyAJ4GjoIdM6ioyYJ4qPpvM46UKc4kolTSkDgPkKC9gAcPHHel2TsOQokXEfnwvTKFvcmgNlnkEPbW2yjzSVffkimcdTiLu0MLrgRjtyn)ZtkJrSlWwnVmNuHVvECCXe4yWCc4NLqwfqOnNEZOZVys0KBgDZNMC8ORJ(4fF6DNpo6TxC1B)GrrXUB2hp5JtQ9qHg493s0G0Y3NoFUY5BsX6ngBQ0s8xVmFUs7rYdqbt1ngpxOhEgR0E0SzyPUQko7L7(iCGI(YmObh(9mrPq985LymcvDAug0gRCfcFBsDeO03E7RAczVl9jN(UlpD8n)ZBrj(h)Isr233kAaq67FD1bT0Afz)7DfvPTTDaKlDYGu5DY48mTKPVGqQqWKT5ORQDdGGEi0x22pETxzD9X7n2(AWu5BNX(42I0YArAlYJkDGvhBCCK7xxnw5RusUCKUK1xyHM9WM95WaE5RGp4FnP2PqqaIOyB6pwzptwMv5O6y1a22HXZF7vJN8LZh)lry8tZIUbGkHJEfnz9xLo1RsYXrTEoG(ECR4q74My6kLldeysqxuu5Q41006O9BUtZBIpSNx7nOFIUNU6E21FcWUM81MtJNkXIZoqxM5MQ89rh(cpCx0E40zpc(F9WImLw0MH9moPpLNrHb)LpD(B0F)cyN5nVVPdkyKz(4SC2Z1q2)n1epSNP3N(ner4H6USYVYBmk9jegltr)X0KQNO8qPzO0RnkTb6mlnlJ82vnlt7HoIkxQsw5(C7tuN5qcdTlcbNN1OtZqG7Bw(PZ)YLjZtJ)Yzed3xQDN)OQQ7nGq3yaiSO4VFe)PZFN)W(V3n1l2MEc(YvLzPvQ(2IIQhY(qytdga2Z3jSRSndHZVOFI)Aq1YoQ6Hyvc8Ay2ie7Y85jzSL2nRxdhR5Vdl8uwXl)YiOU94cokF88KI3rjp8OlTPC28utR)mLHVVC6)2hhnEY5xn2Y(lNC1vNm6KjFb6ANhxue)L3E1fNm66Rhb7bFAYrlTnZxBF9vJzlfkQFOUjctNAAsL2bLVlYRr6lb)(M0YLrSAo1a9qb8(HJDzAtAS6PNB7e5cxHooVyEsXl3zVp1znYgCu(UwbHwE(UU(sxNaBjfLFTaX1rt50UxzsOxx(fkuAGlMX5N3ymTraLB4RhxKI1K1iSAdXUBymVoA3bNEDxbXMF(GeoQXED4p5CBvaLR3xLu0eU42kg6tPVjU4HKkyBOw5xT3P1GvJUev(bQvGRLPB)8JhAwbWUCD1ZdU8pe9qRYRxsmxw(93xMu1Rpv9PFTvh(6KYwPXTvIiQ5fgyn2tHkNl44YQO1LrQ0T2qzltwhd7Qag0mJMm1AZRVw5LkI3vHojN6noQ9azAtghF(2Z8KooEHch3aryyaNIlzaN8S3yBjpk0XZYXv46zdndRZtxHH44RU5MRU86ZF377L0YsJsVAZXn0ykJ8iKMbrES7fuiBM9Qq5tWVWos0pbukwZNsxZ4LwHePshYXg36mWc1kOozkL3HQ81TvO0SxqJZPn9RxWxn(TXPCrVRb03jnvrCuM6qX6MLMU5fHBCjTfsTsoKOV)mCMKYltNfN)F4ZFkVI6NUlHkTsvPSEA4780uyMnnPKPO0wDKSu)nk)uGGUoETARx2hVbeSoZZpqe475ybTZ2bsDAyRmBoXz(qbUJxayH9dddH3OQLkOUZYH9a14EM0taCONvGVqIpj18E2n2f21ZL9I7FADAfPDfUwe8mFjWtEoEsHJDOh3DPVrcqTeaw33XYpepxNj5AgWw2mV(TV)0RU4Q39RFzuXSfV5488hFBoT5pGx7cYZnwstTfh64uQZJxhxNbbIv0QKMEVz7QxUbePOwEZ3kpVK77D4jnjE77oX((E(w2EbbcPWJybBXycTjHsx3qFBhxIN6p(e7VJik(pL5XFNkP(JpJ(dYD1pWV9RVEO8yTDkU3kW8)OsN9USe8JCz)JCz)JCz)VZCzVN9k6q3P1FKI7FKI7)rLI7)qxr)jLI7)bSHY7z7Qp80F3oyT)7r2V7KW)ENLIFpj7wyoOp)xStjXEZs)33UZSJqs(EsHH4ixBhPJ)F0jVyxNnKwjYyOmvSRD79aYGrVeqSRKm0pZf7lrfhs6J(XET8J9A5h71Yp2RLFSxl)yVw(V171Y)qYE))uss63rw63)r(4h5W)pKC43kD9h0r9DN50FhBtt7IAIefk56jrx8diWLeOBmBUo0oOTnkgD9RPvpZXceT(RCyvQKpDsCXJVC3nlswMOybksvLZtww68svzdqsH6u9WYCVQVHCxsQBE3A5PPss6xzrQWJmvgreIQdX5s1OIDtf21PY6ChOoHG8(dl0LH4SS8nqpKQIfBQ8qerYJjqsbDLkMNvpWbBZ1oHPAuSB5quRsVGsmafA2cceG)8jqN18(wAXVZ1fim29nJwtsX9ZT)sjM26ktrXgmpjEovtACTcscW2dS8MMxQPk5KFrlstYMRtTVszje1ya(9FA8nNEDxP5JSD1fFh9hsLlmyM)m8Y58R2vJnLye30jVF0LJgxxwFuB4gld9ScPW0gA8VC07o916sNz5JNEZRof(UnQfo56pD(j19WxAdzCt3cdcSdedUyU8QXFOUxM2770U9hzwi(UQSxn6M3)HXCWNBbGd3fmjt2dLO9Y4tJ)W4R(82q0qT9JxF(PtAaIgKJDhuWauJRV6DF60dQJDqwJGgbk3sh2u2gub7Lo3EVo9PhSEYPa91Lv2qG8A5LAFC(7jhBpS5RdoD0fJo58X7Iu1Do(043D9vF6JF8Ir)AlGBV0SthF6L)6bWiqENKxnlVyf8RSkFnBZ4gLllADf6kBd6gQt(qZ2I2PamjLTQkWK(RwLGjhyvDfJPZNAzu8s49gxTSLCY6KwTFizpdQKktyZlk1si(J1lsNXUOXLai3kv1spqT(HOktF4HKct5W1Qu6uv0hc4rDinkYJNtLuE3iSytbCo4m)5hZlvf44KI45PSEApTNYnXzKVsvKPpXkVZNN3KnU7jV94nRtHIpUBfQQWikZqXFZunHC4q304vP0TPCLjV6Q6u4GkNHbQ3kuk0j5egIPkU8HY212yxNkAma3uPY9eh881e1ahnNKCiL6h5hOBNNrMr6mat)rHMk12TMZ0zlL4stHMhOBtOK1rC9PJhf9RNEXf1QXeDetT3JOJ0ON3aE91SlQneOBHLSVw8U6ec3LkBFdotyBamNg4)DxF6PA8XzEcY3EOUWb)NNTTYLr05Z8cTDebwEwWBtPLRp9ezZoZ1txUDTKNE(2sh(w7TxF1MUgcORzb6h2xFUbffAQYE52kEaTsi8B7F)rwIqVwwthqPRNH6ic7m517JayQhF6NU56rxmeHFBxhm0sd1oWVVHFNE8dU6Ysoz1ZqVfNT2KYsYHt1riG2oHUfnVDlnxRHwOzCYFAxE53Nf)G6YuGK7GxB0(TU6(uE3xVxP6rfxjpj)TnKgK5iiaLZ48LcbCPtLGQzXZwWJocDM2X0QsZj2Prdy8SzQQX1iV3TEYvA3RVum2PUB4j4U0djaFIrpKJ2FvwdcbJT8qCSNDlxyeHUoIApzA8YsuBpMfDh750qF8774t)gt3AdDj399dtyAOO5MIOgk2vBT321R(Urw32gW14bGy4gk3fKoWQYDpa72ymV9166g74RhC)T8LWBpToOrc1r7wtx)p2UlHnQbnToy3n3ZAxyWTARRV)EOm1Up5PrJT4)gaX4432rWXUbI9W4T1ql3tJ7nY2EU7bJVvJBOMEBJS3Q1(7dxVvRd23yVfBOx4oPmB1wFR9bi9BERwVBnd9P(cl7DJ07kT5l2jK3dNiSC2nXP3GAVtj4EShcl5Eq09gvN9XKUfFNZ(ea2AT5UhIsp9tEIDU66Zg56ThM)(uTgM)Tg3TAQCpYj9yH6MLYfjWywrR9dTVjEJNRo6XiGIkyQ6yqm2xVznuoYtE5UjKPFtUnvhDtvU066bKF)8z396tYVgaPBMJOkoJ8LnvQRXQ6NvT998hvD70Atp0B5ArsgmYJyEMqBY7KTUaFunJcasf7bNTV6ZBIgjn8ovEwautjTddTKoUwUkVnD6Vev7oVkAf9wbP3lGDFZXeWDCZuEVJBsi8XnGN(UPHbsg3mL32OOwz2DYXSFLQWSNCb7sPpBncU326lx3QzKFj5lxgVAU6ad0b12kR2EkizRDjqdfhWoz0aV7ElWQjp7CFo4masHYnq6IHFRxCXXxD1h(cVjK0DT0B(i8m9nQcZnDjHgxMuTqF4L0qKM4l1466ZkIgsqW5jjR0NBBcACT8pYxVx(U6mKOBR(WrmnVI3NTAGTXDpbTZdbwsxBh685z7iL6qwi2lhBWGzBldcqOaow1Sx0oCifosHVVJRNi0rDDsrBiGRfCoq4lDdTSDCq4a8O1wWC)7NylyS9nfwqVildADfh1K37s4Q9Yy1wKO8dgo5U0CWCEtqlobB1C(gbdCuq3XLnNUiJF4k)41rDpvF7hnTi)rnNdLo3Mucy6fDAtAoDdBNgfv6tmz2ndmc67UTwx4qMEuFoRWC9qw(04tuN3b91durYmvspuNTeDVu3SEToVr4zzP3NeP3Nv1LzxwYx5JfM(cPZCZ6PV4SOl0ooT701PvReT053BoAaD(z99ZxdVB3uSVJbZ0R6XStV2XuTlwQws6DAF9PII2qnlEd1QllaF1fCv7jD4vW33G89cIA8WVZU9QW2qDAN032xznQT)jsDOOMRupZceuvaaEKVXmIHe2csvyOeo8)AZ)RG)xlDSSBi0cNn2j56t13SfQBsVx(RV5nVChI)f6IP28YDO14VFArYk63XpOG6xUJpFHVCxo()8Hi8L7IF5oLqmnS)w(Qe1Oo3mSdmiQwGjGA()s3z(P0SmE(5XlDfeu1dK65v58tnJR2gY)JxUJAAACgTrryixVP6L7wKuKupUi6(faWxL9CRjH(HzjTx)XzL5DAqvl4xDhcI5Q0SiM)YFL6njQGX6EDdznfadL)abWS5uca1p9e6Pye0zm(L7(jDckH5pxRF(L)QErD0a3hzVC3)xUv)f18Qqc0iZxRBkct7R0W)fcymOOsa8RQieG60RPWMMDLeFdmHaAEiNOnKxlQgWaDE2C0TKk64sqynf9hFHNbn4xvSjPf8VJD9Kxdut1lcoB0TWEqzoGQ67b0o4hNwdFV8zRqno6bTE)x1RbvUUXsil)jfAIsRe(UQRntbL32Dpjn3lJ80rnwpHZIjwgAUujQQZsWmC)FUo5EcUgzE0zBwXPWQ8N(z94a)ui(pYwkrX(nsazotrks(BBsluIC)VHXK8y9I7PCAZJBwcYaRxUdJISd3uVCMFud)eA)Fz3Tt5RUQH1mEBkt0ulnJhDHcsYAzeQnUu)qoJx1)8pTlgLbUCc7ZK0mHu1qbE(z5RAjtzuTW8ogPcsfmrgQbYga4EiN3gcg6A2LbbUHAyybrswUHfCyrfEQnK7NIlwXchK2bA8w1EcfTjf6B)rDpybJ8nkuSW6VWA(OSe2ttAl1EdRonTQKzONXJaRFwFQA(EuXR1RB6jF5AcL()ogjUFLkQKU7KvnQcuElFCVuhvqtfFPT5c)ngTHyRPnFJdyBOZC(NtIxdq7yq2S8nLcM2EngHtx910I8vKVzGkCgKnbI(NhC0yGi6Y4hsNfDgPXnPGAVPQXyh(DTc5qqMGyL2GqubWbnkpsAl)4INPJRu2pRMAeKUtDHKPDZEl45KcWDStaAeh01Zrt2C)950D4PPCZyqzWLxv6dqGAplVrfZIrC3xc56l50P)SP00Ob1BObfQA(5DI(NSz5sGNskRIOgozDArALPi2OH0FGH8I4VgV)L81lEoh)XIOFjpdaCUPA3OrmyGrCcCLpz)d5BPZGkDm2(yEAj4ySSnvghJoruwQb(SI8YQP5KS6pDzArbPW6CYNsfHLov8sV6ALJPS0XhJ777ZFkJf9poJnQ8txgt88QZxyt)DCQRGoU)sPhZYp5I0VQ6oesqVHFDz5025y4P8u3ASQsQJft8dSvLrYee88JLRPJFe65nfPRESzkLsNW6cSJ7NxqyOA9(bWkKrM(MKVjRFx9CfwHo1vCh7qCOxOA7Qa4YgeQnyFzCr1ZK(9tI7GWcDcQlfpEiST81R43LfNsAzUjNSp8tMV()020zekRAj71SKde265pF1)l0T3vaYDFqx6jfsvx9R7kIZwb6Foz6tK(TcQ)Qv(7sw2FmGuS0rWJHH7Zwy7dKjZcUg2vwMoBh0zplpfFsy90ZhboMyLLNphEADm7gzFYLNLwvMHddWHxG1WSyJYpTpNLDTwub4R3cyB1ddmA3IHc0Rgy8L7EFCvb7zupG0wO3rcNMUkCD1egyiQGbZpsN)AfpY)wC2VfN(TTqYUsk1R0qjRhkHqOgQZFG8NNmcdnZje16m2fGEGJqeg6OqAU1dIVWp0WLnpLo6Pu)VmzozgGgY(aInTdbC6DnAVOtx9ou4pHJqRV6E7gMTaAxOP(cLyqZmrP140tnc29bbxNalftRDqRLrG72lJJJN)Wa8oUbbsU)1CD2bEsdff(YZoy8HuYP(F6JWRmiVPNBFPRIK6yvlOkGq0Efuf9fuDmmFHsPV2mEfIVtRPEgSp0yMKHxgL7y3E96V9690Lio5LdWhsjoRIVWQBnaIThGZHFGGzkEa1JUwSqUJSLog1XGDYBxWHawRJ76ndOHL4C8vR(gUpHupexNxnRa(5qsr)cO)5WNMtYZ2szRWNoQTkSrJ2oRq1wxm5Zu(HkxZ0VED0lmWxVeAy)ew(kSWBrSTlulb1Xl9ZWPT1Shz9ghzi4EuRJG2Rd3F3RddxOJJV6aVaDd3NmfIbePKehwwtfSTyDrsd3xqauxRSjNsvTipt7WKmNdTXsr7S2m5YKSKKD76ccxAEeFMvglBR)lq5641WTlLQ2BswUoPCl0UTGo71SHvzdZNWZG2JNfVEr(Q8nar)2fyY2YeLRKUHzO(B48cdSSvD)9u2Gwq6k0PNXONjqHLCRXSHUAxxi4mlMz2)LKI5PZyqU1pct9q2RQ2Jc43rGNYlvddhjmyRv594MShvkXHfasmAimqiF89hlnmEcYgRAjmIQJZmYb(0777bVUaK6DsL59ZiM7gDyAVxxqVM3VaWHOOI405isKzu6Ct4tGfSByhY1GgzSw9PJ(tx1NGZI)uWLPMnrIvFpq9PTTU9w6pnFxQ7VzC819t)PJECT1JNLE8dd0FgQZGhx5N0rIzrALofLunCahqEmvDG)sjhPjBc8(yrpLQ)aonH8zyz9S(zauN69NO0BbDDF68loPo)N6JpnFY)mVdhQ)cDWLBF(e58lrjeNUzbabhuMekbhQaHjjs607HExKQkcJnR4R8FD25rOntwchGq3Zwx)JcM1AcD8Yxvw)1th)2R4tYu0XxF6OpCYvFEC0BF)ORVHpzDvfz6x9eQZtD9CcG8KZNm64lon6QX8jil6JJgF6fuVgAi)47hn50j0tp7QRF3Pr38PBU66ZhTZ2ZBy0OpD9iUp8Hfs9Yxqhu6uIFEQQahhtzyTz)qRA)U8On8Ql)8ZhF2v1ZpXEo5QF50RhDXfNm6MrrFE01JpF87eQTZBiq70lV6g1srF2UIIxbDk0j)LsV87pFcg6FLXgDwMdo)2Q55sQ((V6YJhDt0nNF5PuZ)85JX0frNWTOpnM(qOFJarYB6s90822O9VbVud4lIKSCk7dv0Mx5abqhhB7qbKOOTOcQxMqm6QQIPQ45iycc4QNBhZVLERVgQ3TcSx1mxp)ajIIiWs4jS46Et1mNondnagcHjmheYrGNRQuMRu1jZAA)m5kjTKEza9SANfXcYPZcAmX4QHEX(H(XEwV6GhA3bB5kKuCbWDA4VOJWwxNoV28DMRJRaR)qQ6FCKcx9gbsRzjTfHUU(W)tFPQ8Thcdo4e3g6Dga65Jurd07zfgcTNiGLah49VtxOFN0Aqx8ec4QlCAebP4e0S1NUigPaBe9MJFiSefAald0FMlCjxvrs2bsyVUPRddmBZteq7tAaC6dbaHbPg)i72mh4aNVRRhz(iuHF8ANcM6MbxgaEu67aohhvjo1gnk3gnsgKAJgbfZX21peojb6QNPI20OrRDJgb9GojSoEWKJVWP54Wchy99XV5dFtDTCL9zcibiBOtgbigi989cB1vahb0MpBb3QKcN(IwNHNf4dpE9C9GyQSvxblj8hpaZlqiH(U1uaPbG99TSKHemrHmjAiE(an6j56yfplSHU7AMvFq4TLiGblaFwHT2TCSsWI3gRfeXIxDf8zYRfxKSGVq6kSbBNS1SomIVj)vNrWAiy1cPS8aoIwDfHK7iCiEiI87A6AdH3UnLFhJKsOkSd3aeFddPrvGNOQPxQQ5oqfOd37Te)rlCb0lGlSoGdWXOzSNWIljN47gkCdrC68Pkqg(A64i)R6SGGwgmqHqpdKSvY0nS3E7K9oimeY6qUciyqadAy08bbds)sWb67QlDqR2S3EEcividi1JK()MUk9qKPwi4uFy5cIS91sCMhuO6ljgn0KGGwS3eLlmam9sBIvsUn7TLNpvwQyi8cumXgjdQpqmle(KABBU9iBZEdwAe(LaQLHaKvtxr4DbMZDMHHwcesGnyQDfH(2ETL7DaQkqcGWgqOs5VBBgAFOAvcMEsNfDDw2MH2hHsaeUf(FESuIswiWS6OA1jKQduG6r8ATKaHkqHVdzgbqJFdonSrLrigtazoEHUc7267THEi4EOmaCKkHxz78REgPXW1c6WqmUyk4ZALNHvNK)GjvWma8AtFRvqs11BORvidzS8DDFLqvbuOqhIlnbr2o5QNbD)bsmFsFxp6u1q91x1xWhdbzO0ftCGsNVSDcwbUKmTbuIdcQ23IpApb6(IPKYiliDEAcKStgw1YNEiypl6MyXXgkvBT26A)blpRaeyJdwlqjyR1HxpREw(aESjgBWa0AE97nEo(uIa8dSbIZUf9iO7nAJx4rwIGoz4upcwqFkuSec7Wiex52kgfaDVTRf(UDvA47ecJiWSky19c6zt8v1ccUBxlF4bHWceQgM5UAbXCiHdhKTkhFDbkl3wliOJHG9bgMGynm3S9sAaFLKIU(f7rSHUG53hoywJxQ90Bpw5HLnxxjz4ek09TBB(ICwgAijBlwn2G6RRxsM)SHPvWiRmyp0QeoLjTfii2qW8cfr1nRhNjeAG6xhpIxcgCRBwphJG(eOif(ze67q5730mV((pfQvKJajSS6BbU2oe0PH1HeQhbXWPVYP6jvcHfW9bnkUk5ovZ6YI6cEBhFSoTcDdbAzlLogMCr4rHUIoBxJ6j2HUhzlS7AVpCaUAzxMaSoaD0oqa0cLO)U22FLWl2rVFTio4Y(OjCgNa6qbFOr0OA9RofDdQb6pacsW86(uEiv3Guh4QC4E)QGGSlI2YcMtCHrjyipWt(DIOhS3VciiD652dweGTfwTaXYvi6gC0UL3HFSEWBj0lBe7k77UXThbeviR22WbiRGGTdokeane1DGRt2ESSPPRdcmT9Qhonc)3HltyKT6uADyc9OBtcpYJIbC7bQNGZiKtt0l50GwUJaf4bcehbKff0MPSTBpWHi4gdCPhoP5BB1QR0TxHa(OHqW8AflrdjOT42ogiL7194mGROiiseGzafHN93x(jgU3BByjuqPL3JUvECekpIgW9A4CbeN9GJtiWhyY9GCV2YVdF24qXrUhk8RA82Glus4AZ(4tBkOBDqd9axx4jcSM67tXh64CGPtXVRybFZKaRZwKp9bFNQahU3VkgZQllaeSc8DX)jSS0rm(DWcmyV3cNgqHFav1WQFafQ4Uyb8HVwsi36sxMlQlQLxLfqA3lpm(0wjap(zJAYEol9A40H79RItL9sfKieEB5rEuHi98((IAD4EVnofU64tBscDh8RDkCaCkCiMsqbC0Yf)Va)duSQBszqa0qqh6HrSl4F9((ysgU3BNfolY3nSKCi33vP9yabpjy2GIcl6skcEW5FGcEDSkp2oGRNPd1YVU5V2Key3dR5bO0b2AGN3oEHhygbBCbDGEVfwdX)6IOcqCQUWywR8m1JnGswefOoCcLyRm0GxXrcrxFzGMzWgHO5rmX2cVdo3CHedGLarOJijLI2zGaHfbHDbL)SGWTynoZho(WQJjpTHdYTYsgKuPKUzhqPGZXE7Kx4rL)EOFGh6yGVFRUc16E2uqe0TgLVy7KxaheGUAF4Kn0Az3QRdJcAJhDBBkE4bQsVXy9Y0fcCx4iHVmWRD7doKig957rjO0luA1oZq0nEfICeYv0WAnGls2UK)ZspWKz3EzcnWGPd61OSc3oLanr1JWSfW7klk9pQup7AYeXalKbcDkWHU3caPXXr2ehz)qNqS8imCeKcydcBftVxVq19PsbLsjvGLSHS0l0jiOqNsIqHLKUoUc3rOtUiOo6DFcdJ0XayhHob)ljFIf2oUuGB7o0j5rbQ9Qw0Z8PJK8mIsaj5XHZwzEPElEGIENapcWPtY0wzzPgWHhjEqcdKv6pgi4CXqkh965vcLcy64oGG(GzMVVqwgU3VMrCREQoryW0rpX2MZjT9bBe)iH2JzeCmmkcUghGB3AJFGAth8mRq8pKwjI1xDDLaFvcdjnlu(5H3(BTDAucxj1yqNfC7cDgnqD6E4mBc9cquIshqWarhaEkxI9JkNTawXJV3aBxGyxIdUWRiOjb6kPvLLyGekz52h9w161RFVdyTsZsY3whAvLWfP2K5j0vjN(A8n6M3E1X6l3BvPEqNjD(av3EJ3BkeqrZf5nDlwOVtGBU5kAEnB0(AD1sFZbPUUG6ndXzlJkFEfFl(0C0aOwKgNfTzvQQwZ6UD)0nMO(IGUIVAp5BshQsZ0Rd1fZV(UTO79KMgvPVW1OcLmTCgVhV87RPc(t6acqFsxIgfTV6Plv3O1jfp8SQA9iWsHcVooD(zPRMNu8N1mECRcFzR3)d)PmRsR)SM1l5DK)pRzBeFGq(tKXXX6pZz7pnMfQ(3PRjv1r7Io6ngDcW5G2c8KGETuV6gx(4DFGDyquF11yoFgv6Il95KctbSAoajrP0rOQyZ6QYER7NuNqqQiBjqCfFFop6xn3c(0VVsveUvTgU1KIXTgRMb40loJuTzE)RyqcZJF(2jIG6l99v099FmFlqMpJUEYORW4(kpmhjSz55z0DRUUO179v(CxbS2806xlj63NbLQRBwvv)s40(VNdm92Cj6RUqAniuvjTXAZnxW6eUkpE2I(OYKSz5ubVfdKqKzi0KFQ9QBNYPDWK6Rt(Kz665Vvjf3fD2PtC9e2B655zbzTyS5Eo7(0Is2g7e1rhtx(3DU4JIsNRUT1PUx)ASG(rB(IvllNUNqBQA6ABDQ3ztl57ZnB(MmiQ(nYG6fnvEr6VLtVoqMqV5gMAAd3K8iAc3tDQt19I5fMbFoIndsA5f1Vxm6)(pov966IFKQoT51gF5tX3xeDaWVZ3lB)Z4fgO5nE1)XanBEZB8hkA(Fg3SZn6PRLa0vSVN02v66q3Ca1IFTv9OvLnVV6PokWmAsRLOVE05N0rIMLuHW7RPcGVPZMRE)WPMi(Lchv1W63mgDVA4QU92))p"
	local dtprofileClassic = "T3x6UnoYYA(Smy(X0nWT8W9L5G5hYLLRYN2w2JLRUonqbttjrlryksDjPk3UhC8Z(8frMjzskkzv9G7zbW9svAjxImw)IGzM6EZ7V7(PBklEmnlHEz1QINJIltYJJklYsIsNxKF)S7NopEt92YKOYK4mQDRO)(u0(njzzZJRQP3SoTA(I46y61XBl5)ojpPC5l0RweVoEzcEv99tlXS8y8cm(5y0MyE)u8Ijw3pX4el67RQXeToPmct)JPlPz8rmj4d2UbZqsfrt)NBtN)u0IK6K51PcYSmPkPoce18O5XZxLqFwEruCwszn3NTvjrX5PRJPEefpFEcVmwKwfpdl31VuVkDE0IT5lt4re0sCww0MS4xskRiot0YYITBuJfTqAgVkAOkt2uuwhrmOOS08NQe016IVl4ERJESSyDuowEcEg6921r4RlPzAEX6zX1r1P4RNyAag43tYX7lJN)usjXiGSbK6cAyFSaF18ISIsbxK(pl(pT5)0H(tSeaDKakkD5QA8jEYpqVJgNyk5)IoZ)Td9320aWtu1Q4ffpF)0jxpzS6Js)djzYV9X45j3p98Y0)41h()SnErjugE9H7iPxjTEvky1P1z8QhYzsFz6Lx)17NodlXfLfB6tyEkkZtrAEsAZXNxDfG1W8d1s02au0ZPlQxHU6A0WcQt(Dsl((PNLuhNMv96dttGUEA9l3pTydlcJuuAnRNkeM1frpVQ4(PWoilUQIvWQazwuUOIOtpRgQ1Y1m0120Yvs02(UkQM(mhrBWypXZUPtCJ4MVVgtRczRvCdlzBLTZu1qZwoxdvSV2Qt39j4(TTLCdKKR5Wn0zFu6aRk3dqS7YX8ouRBAmTc4b3VP5Qg7DGwh00ApBRG2jWF)DjSPlncWG93CpJ9Xb3PTU((hqYCIQ1Es2OM(3amgUFoI(rJDG5bu82zODoqJ7nYwEUhGJVtJBLME7YS3P1(hIxVtRdo0yVJAOx4ELm70wFJdri9BUwR3VNH(sFtdR9Z07AT5BUxkVhpX0WE)cNEdQ1ETG7PEyA4CagDVr1(qkP9gyn1UD1K6ZKnnCpGmPlv0QIUZABx7BVdO7VR5T5Eh5DupTpK1D3wx3GplQkgyi2uWWmQlkYQt3iXITaiJQQJR3wnlUnYPTAOvdSCydGtaeUCIh9h(3p9RfLzlMIUNGaIZlqasziFoqCujhuvhGbyZA82bGy43qGrRJ)9O64YLjaag67ucrPa3ai9VkA7N5)QUBN2O6rC(8vezKKbuwFpHA1g8PZMvM89ug4frmYMLSarRzeLcOSRl2MxlWgWCjccWaqMmoj003R)II4bsiooc8je4V8fDf0DuZcy4RBNTojFB0Zar3M4na32PTdMe9dJAIzgZamcbLXiki(YPmfzzskXtVKEJHphsA6D6V5wTMHPfyhxhNZqs6XlJNLMLwNcCZqOZuIaQ2VKUEwszwcW)iPIoyV2z9XCLw6vaMAsrEsJuQ4Xhbe8EdGIvkaqsOEb3PkA2Y2b5ICGUNiQVn9MXxE5PxF9V8TPuYfZkkE6d3Gmh(GzZu3ktWIlDnXuxNuVQybl4Lus18YKKC2ErqnUg(KElOOpy7kmUuTDtrAoVYQRlwRrETq8mV)Cx3adhxl7alJalBhN7F8daRdgVZdSTqSpllNGaZqpBd6ByJUZ998DmTDm99TD9mdTPVHTUp31aacm9DCdnSST9dfJMUH3HX0RrJ6OLduU)K28bkpLsxjihM(goptM)QepsROCnQwXj4W5ArODb8AEmMssJ1XLpjSJKYbMNRYPIBDesRbdZ3r2vemDOQYjWeLwNSokl57ISUEonh6dvhmtW0C4xlFEsveBrnpJY5d4Xl2KWz81K3uwsCzuEYZZxH3MG8340w3wwsPpTyd1)6)0jqjYiw1XtFZeIcG8PtQK69TkE9gYBo3u3)uPon7OsDAa3twdNWeIk2KVKfBVkL9PKz53JZeHpgojjkLFM)NVDtuwXYITSd3wjNk7AeBkAfMWmEsNXkfvROC8NJ5kh)plZ4GoZErwgI6K41Cbf6QHHvLDBE7u9cQNVsKAn54JcdoR97PvCeKeuQ7rZ2cRCrY6RrE5LVeHvdd5OP9cntrQ(vDxmvB3SPmPszMmXOZxMSeQP1vrTSyfltmKSCCEm7)x4)PNDt8VRSBOLhIzbgAug8XjZCVDUYlWNptoSZ0uJi)vc3d6o4P4dSnIKni0fzz3SYINKo0PCCBweYGNS6CZ8kuUWmejDTonVOCTOQqVC)5FWpao68cCSmG)wpNa4xdUkN(7WJxGxONJVFyGVTHpY9eFd5(bEjTC8d9dnSd9c88aSl8nqJCf5Z1l0maDY0ZWXjWq8nuiwOLiMscIWVZEoEwM5pPfByiuoxLY(wAQRYlByw)u2rs9kWjwUkQLjYozebfuEeKLFatjgk61uGILrL8NXdpu4rCp5uOPcl1ZoONfPYkxOTiUkCAHchTyX15vFtwTIVLsfqR6B6DbI4QNOL32koYvhGH56X9TP3NKNSw(oIh(Ckz0qUpPI9v1YN4fHohsoNIPeFzCDDzkwGIAQO7vLCW1eNxWYa7wpCHf5xMixPg3)xQwy)DzB2bxshHHarlt87bi3omybDfPpJZA8LUor27tPoFk13tf6nPlHAnGvWL7bnMe0Ch7ZZIFKkl5ZPBsA0FeCPDgxqsNso8pvG8EA1gATo5dwnCSzAsfr5szVyXBrapwtJgEIzNL8ixX1sPN0AvW0OgNlsnFz9Bv6mnceObVK1GXlMjEHkgYUvj7tcuVtFJOln2BfKEuUuZq4TqlOBAoIzxXSlezzldf2GZl6yBO9X2qNJTHUhBd9o2g6FSnm4yBy4X2qtJJULhTSX8OfoMhT0X8OfpMhR8Pw4p8(Pxr1vpolTQoDofBmlRawil75PImj2VpK32ltTMblvXFH96uot8tJlNIi5C(Csqa0lpB8DJU4YPrtVB0DFz6PJUn6Ml)YNUys0nNDZuQb0u(X32Vg1S)2vukpgI3Co75C085WcmVoo71hUb4uO3m)frlMw)sghbJF3iadlVP3tBQKp9UF7krUu1hIENo(txnEYD)a0SezXDCqyR)uRHEuDNv0p(A4JxE9h)LFqME358hLIflxaKJc(CNcnYHO(ALB(3q1reu4iKxtNNqimEt2Iw2xsSmDrg9blFjxcTKmhvjugfvLhV5xjtHifs4tvyRY2SkUNXCrUGG4S)OyNiAf1brmyyJwjAfGV(DfWzXC8zTqYc7VUyyIIEoUIZvuImrpPPoaCsZf9cZc)0kfJpTsTLy(yidTfzB2oylflnsq3IcqG55CFaQ10m0nW0YpWYiuuGGPBY2UeSykpJNrwsLYhKjXhAH2lWv75yBdOW2yicddmyy1bmS6p4BzA466yB4AHXwG4gONL1040RV7URV62l(0N7L6rZsblHhzS0TlakR6S4xgmupRrscLHiBn8ZrG4Z7cI(d27cWPRaJgrrH7ujgXegEdsoogyx0CLwlWpdJUirvp7QtL9cn0INw7PcflDS1x8XRNm9Bxm5xJGEwAw0DGKPz5nC2VSmEgHVHQb5mjFOIEgHD5davvl3KXVjlfbRfkyaWY6PUR(1PZllO0LPN3CLMPthvvWJQ2v9J(eKqw684I)LpPmskRu6iND3sPqrvqwULcMFKzcXnvyNjwVsMopOxQpOsmTALFqBWpVmnjFr15urn(2xU4dY3Fjap8Hp32bbLYAN8UCOha)zQaexgnCohpM(7u1PFlefY8cUt52N0Gyx7mi9K6NtsY1chrRQ2kthjEa1IXNRsum0nf5OOYfOPqb7Jlpo77F5IOXz1LjBx)Ll(2vjlsJ)25ufC)wtMzNux)yBsd9S(0Y07Gbvn0wfYcjtL2SyrsgdwA7MnGW53dyvu5GR(2ieQ90YK46vr47tk)evM3tUYIQR1ZTTMFOgFB8F7MrtMEX1tmS(2zxF9zJoB63qC(fXLLXF7JxF5zJU92riA3xMEYAl18PSCpXvnMAlnXh00etvNABsDBD1SmBfsdWSl2lZEQY583KFJ)gO9KDs9YyLI4mElHupu5hvpMLFi5RY2kbF(20Q1rCGxXabVEViIDmtPJ3nfEYGW8VFYRpWVY(VZ)L1FxSjzAntvDN4hTLSO1WOVY8BNVz3(U)o0yBY2V5BjTyYXaeDZ5nyJouSgxhrvWPsMYbYTdUOF9b6FBwWnAZDeC98Z1DC7TQ))pfLpCAgIROROO5sOra0JsoMh7JuSRpyds)nRCbL0aRWK3kwkNqSA1(EyrckCaVON2PA5AvjQrbyaY7YF81kTzZI2uj3TzTmTQKnXabj6U0QRRY8oIoU84jvqeHErL3LQFd9KpAEWGD9BQ9maBPUUBZg(5K2fF2(EOfcW60gyRXJ05bgwUgwbbM(boEwHCuDVwOFN08Gao3jeOgqCEFt)qxGRuGzqU58i8lYCcAkPKgSMMsSrFPcaFp0nQYPkWqXj0xl9FkQe0pCbM998nS8SDCCX)gi(gjwgtazXX1n03Y2LGH8EbMFVaZVxG53lW87fy(9cm)EbMFVaZVxG53lW8)SkWSPs59FnlW8KpyEcTR3mS9nncPnN67Lw(9sl)VQPJ9EPLFV0YVxA53lT87Lw(9sl)EPLFV0Y9lTC7H6LeBv8gWNCKayo1zjsZKQKs0LiiqQejCZUAWuGL7mvba(AXxF9Hg5HGXvs4M4ZeF6c9tdE18vjRfkQ7CGfMvuXnT7x0Up6L1DdQFRvPl8HanDllHC5dMmhuDEY7CoYDB2P7aOxc4Ezl48OMNvSfUcfNT)2ZOp4ZpLKhLacIoed5l5fnV8vB(EWBbPR2N8QJZvZ5)YnO58eyBY2DZxruda4MadRf90nFrzUs4q(D93q9GpQ80(shusZEZxemuTb55djpv1zRENQeIhkowj0R0oxjyPtY0vPjzlQevJwyElpWpt)8xMC34B7DK(29ScYGt)kc1FX17RX6NvXPt)8ORgnz3J)NtONi5QHg)Rg9PXVvx6ml3m(U3CkKNYqr9lU9lxCw7zO0rCKYKhmUGa5XHENP5QRN8l7Con9T1BFZb7uCe1oB8O7(8VmHtzChcC4UGjz6bKe6lJVm5xMGeV3HIgQT3C7fJN2seTmhRoSGbKg3E9N(Y4JQJDywJGtbQuhh3uQtQq9swgP3w(0JwpBmyFDvLvciVoNw4U88ptNZUJB(6WthD5OZUyY(evDNJVm5t3E9xU5Mlh9BAe3bLzJNm(QF7iue4trhaFjJz3GpuD8EGB2MyfTpAoQsua9oC)t(3NPkaq3ZlNvRNcgiWoEkoXZxDe8uN7wNHCsCIV6O65PKbo29vVAoCQQR(chZD8h4y27i)fYbc(s(t5CXDKgzno)KQjm)mpzDtLyq)mn91bTCIHzOxl3F0TJNmk63gF5Ln2yM9Vfd657rDcKDA0a65SXSX3KAkD67yPRAAi7eDfItL3trWrnjbmoMRkawH9pexr3fnVbl8RXLuDsA1nvsmx1y5h2P0KMdBW55Oor4HD6x3ybdVm6OY)MIOBIZIxKM32E1DNIBJvcRJDgLJ7t5AhSB8n(nNBDL80UvS)PBhpUnSLthokZS(8286KY30kyeFO(wsjwFOr72ILBtoSrWqHs23A4mG(jFvpkCpsLEbrg0W5lIZqN4AbQ36OvBxPevMQDaD3NzFpFN7v0DtBwndBE1jW2ovaAsY26sU6D7y)YmkKF(IdBB(RAA7d7dFq(WnLPjv17LSg)L7UD0L7JSeAnVKqpKTd46PFGY9yWwRFghPcOcG3vjseXe47LLXBwLoNZYJpIQCRexItdCwuJQltxUe5yip5MUTN6tXjofPtlQoB3twjDoMRepXHajYD(jcmTixCoNFMbnxSqCHguct7TvufVLpcN2kli77nfvIdWRCRoqfUKFA2CbDfx9wThGu1X70Ipg97dlVJB7DPevqwg1D(liLgE7lKuvr1lTPU4B((g60bVSt82UP1XjAK8y82S62ZVoPEbVBiLTYI4fZfx2xAPiSQOgtyoDmvl2W1S8o5QAwh55giBMZfQJV7V2UoPmDoIIx9sfD2ZREz9SISkrHZBZ56XS4LIZxBZnt2EZCOPAyANZ2jIKVe(dORKmQCxdDKF5hiCtDCM(0lCvKLzuYLHHgN(Kn3tbIM451PFpT(foZoIBlQHFdmhz5FEZ6BZDjPP5KylUQ9rAOKCIlunPCBMsZxpz4fC5svx2eQK(iLgMcRvpkwnjUEfbAAuubmIsZPJAoZMxMvml(mrXWLtszYCH9Hi)FPixClZPT3GW3LL(iyoI6Vjsdpl578ZzuEXQzjfxYRea6IzJPe6IcqtRRt(WT76Oonxk0p83QnMd25MIR2DgB(4oDAFf(wRktDAFZdvLE6jg8tpPz3M5lob)At6B26oJ9Eir566iO0oZ9p6kton)ylW9jlAKG0SSLigohOPfYh138vX01kX0x)RF4dV(q9Q0QxFGAZRpGwJx)8QKC6ZXhiORxFGFSZV(qb(F(zl)6dXV(GWiJg2)OiprmQlud7adIOfycOM)F0DMFonlJNFE8quGA1aj((6c(BvJR0jW)TxFGAAACg5gdd5MT1V(WQKYKMXfH)wbchU01Me6dMNOV(JZQk60GAn6xCTfH5QsTiw86FL6nP0GX6rzdzRBWHkwsem7iHiq53YyvXiiZy71h(jPRKxFaUz(5x)RYf1jd4j61h(FZT6ViMxbtGgz(ULqiy0R83)brmkwufi(8AIbik)OGBQCaJ3bfhqnllizdvKArdyIUiBb6wsDDA(sIRjK)4n8mij)6YTjA0)ECWZRbQPYfbd5qJ7HikGQAUdk7WFS1g(EGweSgB5G2uxq5AqaOblba4sWMO6wJ3l6A7uq463)K0EpWWth1y5eIGBzI5sui8olb1W9)62Khj6AK6RoFBo)GWR(PFwooa5cP)rbAjj2FqgilyjszY)520sHj3)teaaWket4ZfLpPVeaQMxFaJIthTPEqIoPvFcT)VS)2jWnjAyJI32QeP0sQ4r3QjKTwgXAJRKFjhuU5J)P9POmWnKsFLK2jK2ePqNFErUMnLY1cR7OSki)LKyOHiBjGhHDUofm01eltcCdL0WksKSElB4WMk8uRe3phxMZghK3bA8Y1NqtDrH8UOr2d2WOyRGfBA8xypF0ZbSNNun3Ed7onTUIvONZJa7FwUFh(rCXl9RR6jFv)aN()jgjUFvcPKS7Y4DeU1CoDK1fZQIex4ofR3KMXLsV9zA8m5d)(PF6lxC5z0fn03tw8r(XhjEa3QnlRm2kcApAlzrqOR50egApS81K4nyvDkK4g(QDrBZELE648VNwwKtqXGa8Cywdz0pp4OXer0vXlbc9ZjN1jLu7vB4w(o6Y1iKReY0PZl2wUKUr6GZONihT3S6fApOK9ZIP2231Uzp4kF4u7qpNb8857LGgX7E9xIMU9XhlO7Gi1o1LjLbxE1PlHT4bwEJkNhNNeDfCjCfNfZlQD1lnOEdnOWl1pVx2)0TRrYaNJCNJOgoDtAzATA))sdP)ad5LXFp(Wl5Bx9sbEXQOFTideCHAJctJyWaJ40my1D4H8J0oNGEIL3uKwbngdl1MkMzNHE2Ib(8YIQAKfgnSxLwws(6UGWNjeS0wqZXRzBgZswApbX99ZfpNXEnonJJh9txftMl3XxWGT932UzZhZ93XXJv5NEz63fDh2xO3j)(MScQAgkDkpX1FLy3iZMj(bwITH40tJlFQAd9udrpVRmn)P2P0XXoSzVjZ9ZlimuSE)fOkKrrnrMKz97QNlTP6A2SYmW3qVqrv(a5YXsAI1FvCz9luOHZI7WWcTdA2fZ8qyz4lxXFkloLCqDxbfA5NuV9)ULQZw2cZitV2LCGPLC(lY)FW7pFiU7t6oEoMoIU630vJaj36RjZEMCnws9xSY)uY6(JbSIDSnVxCjtjhdtlFWmzvWniK06057ro7z4j0tcBM(qprz9MEAwrXcas7ugbAFXLNH0vMsdd0HxGXWQyJkg3xZYQXlQj0R3Hy16HIgT0uOG8QLgF9HphxxYGQ6rKwMYBwu72UA66kfmigwjtM3q7AiHoYFlo7pIt)9DyYUo0vKknuondLPPPyOUyjLkaf)MQjojToNrp0JCmnddTfmn3MbHEa(kTSfP0UxG6)vjlOWa0q2NqSOlYx(kqv59YiyVo8NYjK13DVvRYwGHRqzdoXGNzssl5PJvg29jbx7adHsRvG2YiWD3LXPXlwoGUJBqGd3)gToRaphLefPbWyt(LukFGF6gaOd2BY523XvisTnAmunHr0bnun7BOARu(cDC8LHXRrQHsp1Zr8H2WKm9YSCBl91R)UR3XRrAXRhqp0M3Cg0fUN2ayU7aCbGqcLP4bCp6AWg52oA(y8e0(hxXzp24J72Td4HL0C8fR(wTpth5qCBr98sGZHSI(vi)laMMZkY2XzRPVPxGqb0U1BNrO4jqp9Ru5GQ2WYVED0lmWxUeAv)mn8fCHpI0IxjwcNftjx8vG3BddMR344ecThX6iqFD4(NEDO0cTT9fpAb4B4XKzWmGeLK5W6gPGLb7lYrP9fea31IyYP0(GNNP9esMlz2eht9QZm9QKSKK9dDbzATiIFQbtC09)fiGoElGDjC1ExY6njv7W2TmnSdS4aRoTkFMEk2E884nRkYl2cg9hxHjBNquUo0fIc1FLMxyGHLO7FMk(ZkYxHSYok)mbcUKBdNn0vcDHOZSywz)xtkxKoNjzTpeH6HTxDdIcG7iWtGsvPWrgdwsxEpTn7jHtCebGmJgIdeAXkEokfptkgRyjmIoVbzea(0h7JGxU3(6v3xEZXfZDJ29lpwl3tuXPluB9y1vxQ(NHiLb85ilRGsEI2Tx22o24FSScnDSnSL72RNsP8mikPU8LiygGf1l65DyiVXChQ3AjxiAMRNFGdqYeyy6zAy500m7onZJ2kzgWmYgWEcGXeF2fQfNAXn0U8I3FZv0VJgViEKsybz3zbnHEQksQ38Wu)epJ3CWdT6WTCnDiSjiKoIzzBAj3X7V18DURTRjw)HaeAGTJPR8(dMwZo0nlSRRpIb67ioVgdXbhCI1PE7bOE(ckVL69mcdDaYydy7cei2DP(9kRHCXZ0eHBrGlauYoO9gt2f40cSacsB)qdX5vXXvJ6p3fWcGLdKRwboWNrBxhMy2vNiGUELdqGhacddsd)XPBZSrqeFxxplhda72QPzU9BgCBb(OJVn0C4j1VdB0zx2igXoSriXSTC9dHJAix9uhvcjB0y)SripqhTT9SryitB51lnzgHOa0v3JpIp6A460xjGmGSGhiasf5u57fQ1vFAtyAbIeU2DmT7BADo(UaFe11Z1dMPoADfQKatqaMxWqc9DBKaokc233WWjKOjc2MzRWZhSrphxcje(UWw5URAw9HG3YbGwma9zeQDjBJvcw8wyTautEnhnevU1N7cOKqVWX10cQDoAZ6Wm(2COpNO1qOQfszAcncTUI0cSnTjDis87Q6ARG3sxYVNrsyuf2rBaMVHH0OAIVjq4BZ)ODGoCV3X8hTWfuVjcJAdnaBLNXEglUKDIVBiYMb5kWxg5oHVLpokmENfe8YGbke(zGLTWMUv92BVQ3irzyRd7kWGHamOvrZhcmy97anqFxXok21qx92ZZewfobK7rY)FBxD8a6ydaq2hrUGjBFVeN7bhQ(oKIgAsqGM6nj5cdGsVJfPk5SR6THNpDENWq4fiuIvwguFGzwOJnmFu3zw6Q3qLgqanHBzyaz02vaXmO53OcLwjyibwqP21m03Yt3U3gSQahqeiBzpJGM5rPq7dxRoqPN8zrxIx6k0(aody4g4F8yReHTqGA1rBWVqO3thQlGzuZceUan9TPWiGA8B5PHTUmcXyckZ2l010s3FVf8dzAg4eansHXRJEnEoN8y4AaFyaNnMcFQVEkvDY(dHuHYGT4kkZrV(ouSqFZqxJqMYy77M(6axfWHcuXCKceh9c8Co89h4G5ZX31JUm(P(6l6l0JHHmC6Ijoq4Z3rVipGxsH2alXga7959XUylNG(IPKQkeeDEsbKtNQ8iTp9aGtd6OxABbNQARTUXFWYZiWX0YgRf4euBD41lQhYjbMsKInua0Mx)EJNTpLmIFGLjTf8BBxqhKoqoEIHzqNQSihbd4pfowcrCyaZ2zxhJMGDVl0cF3Uon8TdrqeewfQ6Eb9Ij(MEbH2TRHpqqyAabvRYCxVGyoCaGdkwLTVNxdT2ZliKJHq9bbMGznc3S7sAaSsoMDXf7rQHUq53hamB4lni9oquEezZf5RGaNWHUVLE4lcSm8qsXwmAJb13xVdf(ZcHwHISiG9qRsakZXY0Xadf0BDB5z90mHrdC)A7r6siGBtZ6bmc(tGJuGZi03MQ5OQzE9XpfkDKJejmm6hbUjoe8PH1HdCpcHHDFNtntQdmwG2h8O463E(rM0vf1f622(yDAe6gc2YooDuk5MHNa3vDkzS4BScDpXY0QB8(Wb0QD6QeG1bKJwbiv1qQyJDJT)gPxSNE)wzCW)cX1MoJDaTP4o2mAeT(nNIUj1a)hGbzY66(uTqehz8JCvoCVFtsWPlJ2WaHtCrqjeipWZ5hKrpyVFdsWXOlxagiUu5SSSymMw9m43pji(jxeMgqzhE(GAkCyyTtICagaCYcDy8hahGpfzuS7AppGqAGKdi82ii)oPhtaO8raodGRdXFdPUkQyiJuj0dRf28oyxqoGV45cOqg0VQnbS4X3Ba4)Mw7XZaYxXfr7bSoAvzyoqacd3HY9SNegqkrYGirr6uL5B9JvNHH79UbicnPs8b)MauRPazZaWKbibyw6baqibge68OGjB43bM8KqZtCpw6x04DjxyS7AXy1PhWGBd4)EKRlujH6fubGy22(OSWqkM9ttbOUmTrEIWpVP1rhpJQgJPVhLDjWIBOdR3LGrgcWtH0WASBY)eKx48dMfKgQVgosxKWJTbG3Iu61XZ1cjdyKGsRTbHDxu3axfmYbwide3laWp9aFJQrL)(0UjqLadfmQaM1qnazE9Wz5t)K)r5teyaOO7jUhW(qLzhwBiUNHr4EI7bWXi5cyys0ivh59e3Z13ICOb4IUuu39h3Z5KarXon7z2GmxbjtzpsQz27aBUP(CHi9y4gceo9OW2bICdHd1q4obE75xmaYkZHSCm66kWYe5j6I)ZeUcfjr8d4kyWEVJTvaLojc9cuCbuQ)7ZvGpWo7azbG0aCuUhNRa(hNvTaOWncI9GuirIywkTJJOGqihBeVWKchaiJM6P964YgEurBcuNbxntlFeTL9DqW7aQmTsZ4tHsSqM0uDFST2nJzGC2HQkJh6yGVMvPp8b5zrix9PsWAUBgZieJHnMHqerWt3GEywGoFupgXEgiHYItVAwAgI0c8iO)GD59JvELH79UklWnMp9efORiBz2ldOSGm3OkPHmcCX)e4FKXn6w9q44dcD4RbjzR84C8A)d37DlxSbLKbws2uEMI6ZnqKfhyfHiHg010cqs4FKfCVdWPjwb8psNhlevzZFRjjOh6mqHizx46hrfS9cpYsx3MR0a9EhUMdWeax4aKgIC4Qvq0EQbuvnPkkHSLi1kLm4WWnT6vlEF6rArX2OeBCcoA4MIf0G9(nfC(DHeyeesf4bbQG3IGFWSBgU3Vjj41JeOs5sp6uK8gSc)Xs9y4E)wcc7EL7mKWndfdGIbULm7QzTFN3UHWtbmbHPOj8t7OHlYebRPQ1bxfuAYdGlcAxifF7GWqlpln)(dtm6vZp0dbF9rSnmYatvBxboldpsK4rvsCGYDcaaiucvSukLHaTYqc4)biOkLdUjjw3TCNa5nWYHGgMoqLZqRR2GjycZvea1t7zi0kc0tZEpduDNl0H2FPpnBV24gEVJkaUkUJwPd57Q0A5reGU6q(Esjjf1pbtOn0v5YJID4gF4G3cbBQ4EWABo)dmO8yYmH)DjnnpAvs2MMp0KEmmK6Zs6WiRE74jF8A(WIgD6TJh9lND9xNe9Xpp6274J1tDzM8x8sX1vqZCoB4Eo(QRVB8uQRd9T385rtfFR6E57IjNFD0DF5URV9IrxAjykNF9TFACZhUVXI)rAD0xUDepE09IxT4hfsPiygjbMjU7Qa)yM2V4W0507IjyuIOZQx0xMq)fDBxn9k6Mb86RoD0Dr3DXvJPp66FD8TJU8YZgD3OOVo62jxm5tMc6uEOBJIZZl2shREYK76BU7IRNmn6MrtgFz013mEY4ZOH5ZxmfRNFt8X6RTb5emX0(lDQgt)SlMo60lhhD9e(0NkMhXjgztsjFE7OdzK8KpiUoof)aG27gVO7pTQ0pGQBlJ5n4BA1C(zUFk)twmFr(q3(iL6xCD8HRljpPC5lTNsjbzCBC6IZtZxSZ9)Y)LnJNQD(j25Au9)sxN)JB2UI3re)JA24t76)izK2g)ZqzX5FuZQ63OwEt0ptBt0l27885gIUfzOHgbjwuKNqhCfMeu)(9208MJ5P6SjQCaj(TYTC7M6QERRNf7gm6oSH2Pr58no3OFJUcDe)IR2CFLr)48s3punxlQYJRONJLRJRnDav5VFr8l3p1eriNhpFvYcXnfUy1iVxXZPB1X4LIZSPKa3qbk3H6ktAUPJBPUXxEU4EEs2vMh1VNmPGqNcex8X)9X0Yko()uXrrq(BvD3FlKtf3hViMzCwu75rEEr(JPlBUqVLNVtXr5B7SOMBeEXLpo8j)hf0fI7u6AuDghqG33JQ3NkUxw5Zek3DU3frevFGB3kAF)lUJR6mFPvx2EpZwiVEP6)te2)g8dIR6wq)FJ4UQ7h3)n4xdc29a5TGpkIQRKTUM0K2VfFQ6BSUMxuKrxPT86tyaVOZhw3XUR96nSXG92rxCwhdw2qe2M9UpYpGfU4oZnzU4oI7GDsCsf5dcV6IqDAVlcL67V))h"
	local dtprofileTBC = "T3ZAVnUrs(B5(WbKae7JpKeLUG7dsJLNXzSL9zANCbWW0uKTKimfjxYwwJNdr)2VQQ(bBs9y0KnzYU7zS76rIS6URUE11Jw1(O9J39OFrz(SKug(XQf5RdclzzHbL5PSGKO8ShN(OFuybFvjlOKfMIWTa)3ra8fS00OWko(LLjvrXH8q8ZHRkP)LLXkN)k(P4WLHZzWN4p6xcRYSWyy(ZGzBI9J(WhM484eRtDW3xXHfAjRmaw(zjZXvCgSiWdwvaRaRcXP)2QKONdIzCweprGMLSkgpaqQOGOWOfm8zz5bHPSsonM4KQWPW(A5R8fjrbXRYMZedDvflimlzzioxbHrrSubUgMMguKg(kRScPmbZlZxvOgrveqMsflDrEjpajmbPjzpxjE4Y8xeuTLbZkZxgKbBlbTcwRvldGxxIRqu(YPH8aEc86j2waMYc5lc455P8KIG1jX8fpoXTRLEL45bRxK)OVc0085WSKMxwPzq(ZlzSmG2vMWYItFDwsjdzeLpNxgc7CCOtxnBgicSQSaKa8JG1loFnmMxbgB(AnBdw1yKAiLvcQcH9vrEfUxqcbG88ugsBYIdQyLW2kOiSe(eshkas30PLSxsiYlSrE0FDEzASAFNufWldRwq0vIfJCryjjjc)P55pVeq7ao7ta)n5ZircKAQzye0bavfMMxawhmUoDF0h(giJKWzldszVqSuFsWtp72auRtYGnD1bfjtYQ4HzrSQGLSSvbrPOWhWdYlyK8JMrMYcldYyRJwaFLLrI8(rRkbLkEqCboEqqg5rGwgilgJJEwo8sI7jwC8)6q)1L(Bh8VOWiPAQg4i5aRwegJ8QjxpzS6rcAuFqsRHO(wJDwyeWDpVm5ZBE6)EvyCjOaV5P7qBbHllqonntDrPiu2vzKGNa8Be1bDvuN3)YR)fGrbK74Y8Ig7flbDK2lw0ErsttZJEwS)xWsMVG)4KEe3GK1DCSqyKsdaJfeQcjgli8KxGCDGJjXjockA7HO)zRkq1H8vCCUR5CGPG0KPcUn(gsKdTXeblrg8)itDiMhm9vPzqoyiImO1uud2mU1Mtq7v8OfcvCuNDAyPP5gCJgama00rW0vCoG7KvaW(q5RbWMa26DQHxGIctnv7u6INxoFH0UB9gSAvrbyduPmnHSJmlCvkpy6CWmyXIq6HkYNKuG80iWiPsiRTwv4NuAvWEgnrfWFTGfKxMmpjd5jogpM(Mw0ImgHAmvp6)XKLtzLPSxRxetlOktInmfcYdI9SK6jKCRyZH5KdwvwcgCa5Mo12fbJVWQkgyiqkWJWakZsG89O)fOyeIxpmmo(6SQhoJXdtsREibTYv9aneMg8z5LrWXcW5lVKWFLqPGIxkiu4zW(G)viohMMuXtIeCPYeH1L00KyIhdWhewjp2a(E2k4GTeGChu9kCK2sYwJ4ag8WmeB2fFrUGJtF5(lq9SsYw4k0GU)ZVIBAKQc24acpz173TngCUcukK29KpOHc9P2stJIbt)BhHQj)lAtY6lA5zxwAgDuwAofWxjM1tHA9K4whVDBZX1YQ2OtxlnjqtFLYiBEYNbMeabH9y)PPsATbOTuENMxrIgrP5RGJaf(wv7Juap8zgyPgggA7oBozML0tugFCuhAbtkyMwU9pPVHLwhbp5e7oiUjT0WxaMhwaNXtQYGJdXOBdKudOZ46uJSZsdNly)awIE6SiHLgtgJe6vGRcLXK69hUFYDJVTPX(tD6kP)4hi6Fxep(LH3E7fxVpGvhoqG6)HHxnCIMZIWqa3zqpRbUE7E(VA47h)LgsJv5MX39fxcVU1AhND79xCMEeEDCS77Pg2G(9D6BVZnZvxp5J6rPG3Z1e(tvBepAeNnE4DF4JtU49Fyhi4UhY4jJV6x3hFWCtC)KpobuI2cF2fS3C7fJ9RrHAsJtdcWo4f3p593E993CZLd)1AXJdVydbZM4rzh3YzosqW6YRF3hpkotl88SXa3PPqSI10ZWezBQ9ha5F2XTEnONdVC4zxmzFSPMRXTx)(7hFueJ2sB(hqL0aD4BFGe8plNMNwHbXXZRDkbSkaFepPsFaf6dvohgztV7DuUwHtqGiii0820Y8W4irGCghm12Fdo4xXCiInPphAxaMxgwaUYkSCkmbPc3Pf3RNNCl33vUL7SlRpN6jnyEApflUJ7o4rNoqDQsxnj0DlRnDuhk2xcZaYY7WBhpzyWVo(Yl1AC2nKQCoGYshLbjf612eKT2ILecRoTn30ueEW(ST4POz2okeZTg)F)TJhpPfAzBIuTmP4OJDsoxBzkPP3hTSe72AFVJdeuqOaPV3wMaboGTTNz0hNAzpONHX8DO53trZTvKupIMbNlwrs3GVytgF)D3o8YDXoBR1Qyqdu(J0zNMR6QKe7ABUQCtFDrLj4W5kH)GkxqebvWIt47WZymcvmuDHhYKh2HfKl5IpEdebpfPLFzyCc4KoCIp8LfGtS4SbrgrX5UEb6qEECoTYuq4GRXGsRiIa87cx)TBgQSY9CWGaeeHkSgYpW7QDaRt3AhW60NOGgrTi8VdzDa3erP0xrFWrxVM3iNoQGWeXxHO)ICEuEzgyTHNdHYoJtRkU3MkwKSxH4pYlzqm5vvyaaIaAdZIdlJdipUNAqtlalvrblZPjGs7bMilT5lYNUg5saDauKmb8tgztqNaS9crerYdNgWGGMIB5kp(Ckts(p6)PG8zZQyCkWUxn)sf46OoysXww7hUrCzOh5CLjvm3zg(2nPNJHZh2d66AR9bP2)iB95PKTSj9CRvK9A7YsBGrxUBQs32dkBfG21U5RXI9bRZ2on12bqnS1OR6eC7DdyN9HP7yx19ai72uSEhcAnWUEYj3Bl3P6DaO7xBCZv6wstxW2EidQpxqbD)9dEpR9rb3c2UEEhGZOD)PNKmAi)TdcJRNPJCt623(acEBn1DoaWTMzNEDpafFlGR5M92MyVf0EhIwVf09p0CVLyyVb7LZSfSEwhcrAdUb073YqBUVTLZ(j6n128S3lM3IMyB5UFMtRj1zVAWTepST6CacDRz19qcPBj35EifGT2BDpatPL9PE27D31wmQBVdi83MRvl8V18UfODoGEslriUoNDvrlyldfoxiQ4HSggXWz3W5X8vvygvB7DOY5Ex5S2hdwykGe4F8aNSWsmahwYzBEYhpNxDeOihVLK7hnDtZZGWUJSH5PrqmROW5ZLZzyMtahCW8mQDT5xeW(b6F4nhuHAeGpslq0GLcUpa(ObqvapTDOucWW4IeUFHBG6uPjjsKpyBNCpWVtBVET3tIQ8j8nBQivAIk3CGe23Ng4QPu1pwdXcwewWkvLraXhzI60j47is1yu(YLGZwvug0AqKcNMKMWtWm52tmDI0fwNdz)Py83LFHknqlJeYTtO3OWYr0728KRMFi9GQ5mYLElHEKQNN6SjdbVC5LJU(6p(GpM6xSEvNCd4q5j2KNVjlr6ZsgFrEmXdLyKKn2rsefPmDKgtQIW63rLztGnDT8ovepZjUDLrfjHTipjJ2QGZVlnq2Ax5SF88UD7B1PRJBFhR(oUqOtZoPlfUZ59DDGZ4CC60VpeHKRf(gs96CVEEDSD7y7552TN9ax8nKA85DTGd(T960DGLJRleVcnBCPQqnrNqbuR4wsGuK0c)ljF69i3rGGcn(YidW4n2kMz6TFROT7BuzjmRgS17lEdBWHiv8gUcNFvXqikGSmcIPYsknTm)zP4d6WDD4nQrHzJFbm3P08BwYjb2cRDGKl6NHXnr1q)1hp)eV(anTx)oowaRTxN(aje4k(FciU97nayiwdC7nayA0BWQMcmeNoEd8gy5oOx)E9ad5WBaQ2cK92BGD)oEEqqCDWiPO3G6TaLtSKObLprIGRLz(gZ6TLLmwt0WqT9wkxVq8F8fG1H5lmY6dzfqi5P0WLPibd7iMkceknopO8XZ7b81(dSDSabieNr5KEIaXW4FafoznFmk)MSgzh06HSqBufEcOBWWxS(oMdPkWrxLILjrL5b60BjlsGY4gVeIKQQUi8i7CDyfv7xzbPwNGHEIjohV3evbjzM7jtIOefimGUJaajpjBgXFqrSBrAcvphX9Ri6i3AeOI9LugJMUlnNoPLldHvJP9C6wcuDowsJhU)ItKF)YKk(jFOEanMuzHYgPESig1GOvvCSsOOgdw5PKpHhFT7JOmYauvriL6xFXjZOWef1o(HPm(A8Ymiz9Yns9rxbgPeKcrEB08yoQqxzQ9r1PcWfmoLxYwT8(lE4kwCs4dNJIjpOpC6uoFwDjQAh8(HogYrQbCyjFYIgy)T)aREED7cMGbt6K1C61ygksjRnRkGdPPmwaId0rtvpmmkjEujDNrG3ZkFpEiZPx5G1gBDn0KZtpm()5MHt8V46jwopC21xF2WZ8F4D5PXHLLHp8URV8SH3E7WlV(D37F6sh16Pk0mCaLCon2(IhObXwnOAq0cz8YWSkWnaHGKH8Ru(QnlQgGDW8Y3lZZxzW7b5B8kab20t5ZdvQKtPkQY3v5mvU(9vjVO0DzWZxLuTepcPsSG0KnVemdrL(vlkBQt5))Ihmz)BNU5j6tU)g9po)M8wjPnfyiVjNa8emGChr1jwMZodfucWVSAIaLOJlYwHc9kUZT7XeqdlBsRg6hVRT2MN(o5E6h0BY)9V3q7PbVIYAheir4mS2cQBT2oSsCiUeiyxYKmO7edT6HFzrcN1)t91SbZkpGUQjeKT31QjlxpOGNgM9SE3Aod7M0CmSGSC9(Kez2NBRn5TMgmp8v0PH1WgoERLtArkeBesOGUgG0upcN5r4elsazyfpOOsEp(Q3(vSIWYqoGqsvmLZAocdEIZx5izC6ooUvW3xNuW00JywfOwdZPWSJXxPBWL4s414uFLJlQsRxF3lixv0svsFieGBtE5mFVE5qEkjow20SimMP7Dm672GwyFsEgR5jd7HJjCQcD(iJuNu(FAyaojdlLbrOEjmDffXMfLuGJfq3JfWohlGDpwa7DSa6DSa2)ybCWXcOT1rd5rZBSpAMJ9rZDSpA2J9XYF47(IrnlhVmP4nz5oXDx6GUbACff)I(mwBBaVXRIBBQPp74e4OIubZzPPcPWnkpigkB7bDHGp9GaJhic9frt0nEyFkTGiCta8vZp8frfzWdrHL0)SX3n8Il9d8VB4D37pA4Tb3C59V)IjbVJQXN0D29d2nNDJVUGE4eFyiVtxsQ7u33oCBEozNEye4Eh8QW0npDdCag(LiPr739L9SebBi4PFM(U(DNYjb8v(68oHF7xVsKoJdU38h)(Rgp5UVvyT9Fiy97KfN9Bck78vGYCzirhbbNVTMGRwtadIveTpG3OOUzAlKHF3ma)tC8K7erG913M02Rsh9QyHrkxhmTiRb04AAojplLrvPgV21ZHWxRrjurfoXvunAH(Mk6F8INislCR56vm8B9fUKo32WLVlE31t8F4Ij)CaSwjPb3bOAYYdf3fr2dcQYcl(aHuekgSKkykqeLLuU5fuSrq)jzISbGihItIjdxmxzQsqZMgUOl84qLebdIT0AN4McwA4me6BuZ0ouFxNfzBQxhx3EdSDblDdg03IsPuFkDqN4y150bU9a)qS7I5R3xMoXrxF3DxF1T0ffPXDewNKiDUlmUDXGntWHQD6Ocrkd5G0ciJjUJLgx0ZLYDKorOAFSmV4)ymYnIyalf(VPUxcT9wTHqSazCBDkZ(dz5iUVSArJFMonuDlrCfxFQaIrsoCENu1DK6aHPAh2Qz06qYGiaNIoYH1eyARd5oq2LkZxt6n0Al)vhqx9k80SkSwlXjLYFWm0TkUH4uZjMgZCm)unhttuM(9DKxLefM)p8530iTLb0pZLg5U8exJQqq7fZYq4IFNLXwk)gaADzqURTu)(T6RYg(w3nl1f)Zu4CQw(1NUq6YOIoVVLtxlN(9T963PNZaIg1Rwh8u9pJIZ7ma4bavZZ2BaqU7i4aYFJv1xxM6OzksxnpjBBgVJPRtTJTBeI8Jq)4hjk)MmxEGLfT6mjUJPNy5kGahyCQbPsGNfTW860qgvYqlZNhc4MH)rC6)iIx5RoX6E98SC6bKUo29qrmdbpW23GoD7oWZXTlkZ8wI1)7oX67ZUZB5v)T8Q)wE1FlV6VLx93YR(B5v)FsYR(Fa()9wA4Fln8VLg(3sd)BPH)T0W)wA4)7nn8MzB8)FKf(VISZ9hzw6Tvbi(1LL(TZj)EVOHFfjR3(0UoUDWlC)FUPPF7snyKO7Jk52)RwI()gLS(DD)v(llr9)LKV0g1x8yYA))sMkEJsoEGSY)hyk1519eK0KLjY()Ir)fs9lHvB3cgX808PHNjcmv2lYa0t8ZmwC2MCu4(WqzKExAYmwGmVjIoMwk7f6Wpr))HybGTszlZc7KAux4bBKwgCMgnoLARknax2JDQFBZUTs9KTZrPTi1CP0pUXG2NXeJ0m0aETPluXWIum0573t0ARmw0Vi0nM79G5FTOOKo87CyFDOSCq7JLO5GCzdimjoqCyFS4hse9R2atAbiJ8jsoCaYVHaTGPY2L(Rd9xB6VwItRkxHKfQNE4NlDDjAHOr5T5No5KnpXxKuT5jeMnpbqdFE9cwg(C4bcSEZtK7rBEkh(FK)uBEkCZtc)GWP9ZGduIznwnT7yseqalac(p0CLxNKMsRpnFqeEC1ejEppNERAEL5e9FBZtiOjq0GFMvbtzXk(MNwWkz65Drs0caXbVFmwe8brmZ9FyAvEda4g4VO)acRvLAteV5NWrJYHWCntcizOaOq5ZreMCQdrq5BpdFlmdshL2803j7iaBEYTR13V5NKBQt3rBsCZt)xeu)OyDfebCMPg6MGXy2Uc)bezuKOka5Z4ibqCGRGAQ6ayW3aHqaBMNJ8gmbrcaiKopngggJZbdWivtW)HVqRGe95LRyg4)E6Wy0EabvUjOgJIb1doXhWkDJhOb9X1y6B1AveKgx5KQBguY9GOTRaBH081cYeMvr47IHwVey7uz)lsDxyKwoey5ccoMMkwlrAkBSfut3)5TSziEnu9QZxLrh2v9DFVCEwg(ju(d9wg5yFgvqIjosj7VTkPuOY9FaNLKhk3CRZlF2ClaoLS5jyw60qAQvtQ40A5ja(FC)Wj8fqaOwWdoxwYTKcEyRee11srsByL8Lu2E1p(72NGYoAlHTfsQxqm5TGmFuEMHoLY0cj7O0kqtWiBqJK1iWmqp3ed2vVHLqbcqjoSazjlxrkoKQcT0k296WYms5aToGZxM5cABYkK99r5iifJ8vcsST1psw(WYX0YsQHzVDBonHxrc0r0mq2NLEh)1yIxAxxnsQTAcg9)Dmt04QeCj5WXt1WuB9okkfrXfvjqgpTLC71FC2ljL5zOJvan8CqO)7POG3ze2RwcbCDoRIhGa6xKuMOVbfYJXHPC4kutb7Ak7DM(fwybSBhbscwEQCqJZq)DGuqmTl3dwnKIC)1G3H1lfR5Xn5jvWeB5OYxT0VIT3PGneqGy3tlrScUkCEsuW54jdWUgDwxMABTtl(xbUzY2p9cSwehqDsPjQFN8D2bUCg4HD2Erg1E0F1Sz5yhgvLpC6xY7o3A8K5RyhARnSmkmJfCfy75kQpA9Qk354K6TJj9YWxcpm(D7IxZHpSi4NZtHzpxehGQJ1coqfugcEyXYIWFW4Ss5VwBrK8y6FwKWLUwILldI965ervitqXombv0V5D8Ty8FK7DuNzUiQTNBY(bWA0TKh99h(RAVwL9)qkuzQN7osg3m(fSPkQBkzJKrHGrXGHGdmOyWjk8yjH5lSziHz0dgDzIie4vzulAv(d)fy2(ldbWxWsl0pKkK)CmCj8JYuVbE2MbKfSuxwM9Py1CJH8ZltL9lyrRu08LuRPw0gjLk5tXPFQOWEtqpwR7PbypW6UBhp8QX60mE(f3cp6(jY(QnYOK1iSU352YgQiFMaFDGfNr9osGELYaaLK67E31JeZNQBpdh7q2mn5r1)Q0TRtijw5qzMkQBD31fWRzBav87UwKiSwRa2VSREnJ61B1srieaDlyf4hBLreCszdm5gYOC5uX4PEufglPCFisQVSNF3mFLnB6027UzMR6657OZpnv3QZN2SvNFlWsohem3QDS(N2koYW32TQy03KvTJ13Qv9kQ5w)TA1gswp(gk44A9TC1(MjSGvpbVVccVYq70kBcU9Cmv4rfDTwV4IhCaR7ekQ6Z5ARGCv3vwLIkLfBrpfVCvbVQ1(gceUctLOp1g2YYOl5fEwuDM)ZendcUX0vGgg3AUQNGXxEoAAtvXwfrigom03EGUEfzycIdPE(BEu8E6LZQtNv9RF5zYT(kDenq1It0L0uwxMkrMHf51tuvNM1RrnAvgcf5owrqfrTswZv3csKwLhgTOnPKLcU1YWwNhlnqnfs2pcVOp2nTbLuMKBWZ8YgD(UrTjNngeLYGwlpTolWtlMO6DGZskRi)b9fEzio4QvxYpjwCljXHRlhN6H5yVsToPO6d6exXJLuBs0HAwob6cGiYhpCS)NZXAv6J1vAQcgcK8aC1oqoRrFgvv9JJ9Rv1KKuDPUmsT)zLKuP9wsMgwrk1ZL3XMMi4)e0JsuxqM)XGmRQl4FQK5)kQatTrAT4ViH8wgQCMMBKMVIBBsQHrlL1tTw8TdV4SgAXK2jOW(Lu7P)V3LyXTutSqujZWKbkVwznBzR8hF8)7"

	_G.Details:EraseProfile("Eltreum Dual v2")

	if ElvUI_EltreumUI.Retail then
		_G.Details:ImportProfile(dtprofileRetail, "Eltreum Dual v2")
	elseif ElvUI_EltreumUI.Classic then
		_G.Details:ImportProfile(dtprofileClassic, "Eltreum Dual v2")
	elseif ElvUI_EltreumUI.TBC then
		_G.Details:ImportProfile(dtprofileTBC, "Eltreum Dual v2")
	end

	if "Eltreum Dual v2" ~= _G.Details:GetCurrentProfileName() then
		_G.Details:ApplyProfile("Eltreum Dual v2")
	end
end
