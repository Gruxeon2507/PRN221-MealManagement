-- Inserting data into the users table
INSERT INTO [users] ([username], [password], [email], [role])
VALUES ('john_doe', 'password123', 'john@example.com', 'admin'),
       ('jane_smith', 'abc123', 'jane@example.com', 'user');

-- Inserting data into the recipes table
INSERT INTO [recipes] ([name], [images])
VALUES ('Spaghetti Bolognese','https://www.ocado.com/cmscontent/recipe_image_large/33362787.png?awck'),
       ('Chicken Curry','data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGCBUVExcVFRUYGBcYGyAXGhoaGhwaHBoaHxoaGiAaGxkcHyslIRwoHRocJDUkKCwuMjIyHCE3PDcxOysxMi4BCwsLDw4PHRERHTEoIygxOTM0NDEyMzMzMTwzMTExMTExMTExLjMxMTExMTE5MTMxMTExMTExMTExMzExMTExMf/AABEIAMIBAwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAFBgMEAAECBwj/xAA/EAACAQIEBAQDBgYBAwMFAAABAhEAAwQSITEFQVFhBiJxgRORoTJCUrHR8BQjYnLB4fEHM4JTY5IVQ3Oiwv/EABkBAAIDAQAAAAAAAAAAAAAAAAMEAAECBf/EADARAAICAQMDAgQFBAMAAAAAAAECABEDEiExBEFREyIyYXGRgaGx0fAjUuHxFELB/9oADAMBAAIRAxEAPwD2M1qtmtVJJlaArdZUknMVlbmsmpJNVlZWVJJlck1jGqGMxbrsBHUmKkkvE1UxeLCjTU9KCYzjqAQ1wEnSE19p2oZf8TQB8O2OcFtZK7jTY0BupRe9/SEGJj2jEL1xxqABVrB2so8xrz/iPia8J8/IOMsCVO/vQq9xm5mDO7MrSYJJ5aChHqjdBTNjD5YT1k4q2u9xR7ioX4zYG9xfbWvIH4qfh3DrmtXFaeqGNPSt8QxjEYtBMFVuJ26xU9bIewEoqg7z1e54kw4MZzprsajfxTYE6toY259K8m4njLmsDe1aPyNZfxl0rdPW9bI+Q/Sserl8j7TN4/nPWF8U2TP2tN9NvWul8T2DGra6jTcdq8rTEXFOOc8lAHqdK5t4u4jJ/wC1h+fVqnq5fI+0l4/BnrVvxJhz9+ParNvjFg//AHF968PvYu4EJYai0ogaak70du8RC4jVICWAwHLMY3q1zZe9Sz6fa563bxdttnU+4qYGvN+FpaJ1dgEt/EIJ1cnWD2FWeFXHdbRt3TmuSx10Vfw+u1FGXJ3X7GVpQ8N+U9ArVKy3sdbA0FyT1Gi/iJreE8WDX4lsrDZC0ECe01r/AJCj4gR9RK9MnijGgmtUNwfGrNzZxPfSiKsDqDNFV1YWpuZII5m6ysrK1Kmia1mrqtRUkms1ZWZaypJJzWq1mrktUknc1qa4muLjxUkkpNamq/x64xWMW2pdyFUcz+96hNcyS0Xqpj+I27Qm44H5+wpT474vMMLIjKAWY/ag81FJbYu5cLEt8RldXVzOqHcUA5SdlH4wmkD4o68U8Z/aFpdk+IC3NRuVFLnFeIXLmcG4zEqty2dgROoy7VUwtghkn7pa0emVtRVlLeVVne05U/2n/FYOIn4jcnqAfCKkNw5gx2h1cdtKq4q4QrT9lXn570Rx2EVjdX+nSPnXFnDp/MT8QB19K2EUDYTDOx5MDPeOUEKSEb4ZJ/CdRPaq72bhUCPsuRR4sCQDtdSP/Na4Gozek+o0NZIPmYJg3CYYk3FI/wC5Zn3WrSAfy2/9SwUPqoo3wHgr32TIApVnzM0wEiMojckmfaiOP8C3Et2hauK5tkyGGSQ28b/WsAEgkSxFHFQY/wDwL9DWXNVPe7b/ACFS8Zwj2rvw3EMLLDrt0NXcHwK/ctWmRIllZsxCwBzg6xWKJlESnjl/l4kfjvKlRcSYZrsfeZLQ9FAmnfCeHLVuXuurwxusDAQNECZ5AczGtUn4Xg1n4gZ5Y3VuI+kmfKVAgDpvVONPxbTaoz/DFXF2wzXByC21+ZFXeKW81+4I+01u0PQAE1ev8MElrcuGZDCgsQFP3oFS4jCML1y9kPwrQZi3I3CBp7A1agEWJTIymjB13EgNdYcwbY9FGtWPDyMvwi0gJZe4f8VRwmEJtI5mWOo6ZzP1Bpnu4JgIncZVESSJmI6CRVeoQbHaZqGODYwlT/MDBUIY9SDGlWMBirdwEMqkLC7aSdR77UF4NwxrV0Zt3Ul03YJI8zchrsPXoa3xfFrYeUTyGHKxDBvshzPPnrW16ghBrG8ZGHWbXaE73hyw7F08hgjy7SecbTNA1wuOsZjOZViMp1aTEQfah7eLLi3AEMoAZWNiO3rQfiPi64HRw5lczHoZ+6R8vlQteHJRAIPy2hHxZMYskER7s+J2tsbd1JK/aIEx6kaUewPFLVweRxPQ715jZ8ZAWkS9bVjcHngwdfvescqP8Ot2rirct3P+42hkbdI7UYeqp9psfPY/eBtG52MfKylHB8Rv2mKt/MQHKCTqfSmDAcTt3NAYb8J0NFTqFY6TsfBlNjZRfIl6srU1lHg5JlrlkqStVJJD8LvXJsipzS14r8Qi0DbtmXjzH8I/X8qy7hRZlgE8SXj3GLeHBH2n/DyH9x5V59x3i9y8fMxzTKjYAj7mWqeKxTuxJ1JmZ59VP5g1ALUjWTGs8yvJh3FAILbt9pvUF2E1bctcDzAUww6o3I9gaKC1lzWxsQWtn6xVUuCQWA08jxsysIDfODVgvNvK2jKcs/1D7J9CCKIAK2mCd95KLgYZhzAJ/uXQ1JiDLRyuCD6gSDVzwvgrNwFnLS5YZdgphQTpvrOnejB8JqSsXGAERoDJ7dtenKhDqUYlRyNpv0WAB8xZt3JKEn7aFfcaVVuXCpU/0j6GnZuA2LC57glVJbzmYJkQFXr70rcV45ZRj8G2oJnUgGAeQnYelCy9UuP20SfENi6RshsHbzBd6zcyPkGYo4dI3iJMdaueCcl3Fm0651PnyyRAjWewNXfC6m6rPoq7E7BIjcnT686s45sutpSh53BoXPqO1L5OqVRqIg2wMpN8COOMxNvC2TkQ5ROg1luQk++valy94ozqXKsI+7Ma9J561Hbvvctot64QgMIysBmOhysfce4ilPieEQ3QAzKlwhZ+0pUkCRHODNY9Z8jbfD4jCeljWn5jPwjAJinXFBbhAlQGgDmCCDq0EEetGTfAGS3CqvlECIAkRHIaUKx3GUs/CwtloREyTADEjTWABMiTpqa44dig+YkjVtfXn7kxTigKNIMSyOGYmFktiNRK76idjPP03PSqXE7MsTLBORDKBE7agg6mP3NUPE1pntPbNo3QBmhvKANddRpA125da86wy3MNe+GrNyNxBBWeuWSCYO/Kaxlptu43henJU3W09Qt8XtWwAUy3FP29FYjrKiD9Kt4zi63bWV1JtMYJKnzMdcpA0I9Pek3Ev8N1tunxEKq6O6glZ1KhuxBE76Vcu+JGYi2tthACqqk5dIkiNTMT2gUu2RgtR1cStTCNGBZHBCIPIAdtdNJyxy/Su8dxdLCkqQ13o+gHcxJjtQuzeuFDctpcRTIDhYgHllOpjqJFKWNx8Xbik/EuKQzC4DqZJMjmp7aa+1bVmPwxbJjVNyO/mOXhniVy/cu3CyhZ/mOkSSFAW3rqFAk/OgXGsU73HuSTmJgH6ajTYCg97j9wwGCrbb7qLkVo0nQS20UR43b+DmQElUALazuoOgOsAmKmQEC/5cZwMrXQr9ot4riPwyxiGbWetLuOxeZh21NPWCxq3IUAG0V8yMgfzRrAPKYoViPDNq4W+GWVjrB2nt27VrGyJu1yZVdxS1Adi8XO+p8o9TRnBWmLeRiPMLaQdurCl21Nq4Vb7VuZ/u2ph4biMihhr8Ncq97r/pTDeROaRRjbhfF4QtbueYWzktt+NojX31mivD8bbuW38wm2JDgwc27EHoSY9q8+NkTH4PLPW4dWb2olw+263EtroqJ8a50yj7Cn1OtYemFHeWmQqdp6Rg+J3si/zLe33pDe/esrzu3xK63mNtXJJJad9TWUHQ/9x+8N6mP+Ce5xWRXVVeI4oW7bO2wHzPSuoTQsxeCvFHF/grkTW423YdfWvNOI3SfMSdDqTuCdCrdQaucf4iWL3HJk6+nMR7a+k0BucQLeeP6XXkf+RSxbufwhK7CWriASOgnvl5N6iuc8QV0PLs3Mf2tQ5sUFAKy2XzJ/Vb2ZD3GtRX8SAImVIkHqh5+qmoMlyFKhZbqkgbK0rry6oe4OoqtjA2UjMQQcrHsNVJqi2KmQ53hXI5H7t0etNnBPDFy9Ya9cdbakFfP9+NnB5DpU9SuZNN8SjwLigR/MftSCAdriiDr0YQfnTZZ4y8oFMQMsmNZ/1FUfDfh60JaBduaAtGg0IlV6kA61aPD0tXU+I+U5lZdNCMw+18jXL63DpIyo2x5qP9O9rocbiD/HFy55c5+0NBI8p21jatcE8GqDmxTqVzEAK8AkbySJidNIor4mRMQ9u3GbNcX7wAbWWg9MvvR7Eolm2HYyyrlDaKJ5ZQdN9qx04BDMNwDyYbJkIRV4J7RX4aFS/wDBt/DCs0hVLqR3ykGdI+VMJh8y5Fyro7MoUSDrHU/6ob4WsObly85OpyJmgsT95tJiJyxPI9qpeJuIOqwWhMxzeoMeu/OtnGRi1Hv28+IIkNl0D7wB4wxDHMLbkLbA+HB2KwV9xANLt7ipayws6AmWA0jMc5HqGLCedXuI27l5siKQDGp0XmJJP+6NeGfArW5e60hoi2qkyRJ30zaHYfWqw0uOjuRvX7ydXiDV8oq4W4967aAJJMRpEa7QPnXqHBOGpZAzMPiRoCdR6Dr3ofib+FwjSiWs4H4F8u+kiYNKPGuN3M6toSPxKpiNokHajpntgQv5xb/hkAm4z+J+II7fBViHbVvKVYLuAoMNJ02pf4XwBkbNfXIBDZTBZtM2uunvrrUmG8dW7dl5t3P4ggBYKLbb+osqhhHQjnvQ3GviL9g4h3ME7bDTT325zV9QWNdrlYsb7qu3n/EY7/ELTk57YIAyggAMoBJ8rbgSdvnNEPDQtM4dJZ0Ma/ckchMkkHfXnSHhMQzBZktz0AH7/cUd8MIUdy8gMBoCOR3J+lLudC6RzCdOmQGjxDvi7jrOwthoQawuhJ7mKCJjsw/mKLhWQCyhmA6ZmE1UxeJPxnMnM2onodttO1Vxe1iSBM7c9tailgSW7x8KhQKsZmwdgqjfFt27egZHtqVbQbERBMaTPOh/8Th3f4djDtcZxEn4gEHQZQxGUH9gVW4biSGCsQylgCOREjvIjeaY8KTNyzhcyvcbV2ViRAgjMYZVj1j50dnBXSIo2Bg12R+UE3eGJYORymfbJbJOU9WYmPYc/lVW3iltkeaG13kjQwenSoMbh7li8wug6/fkQTz83Xtoe1UuLKGVXTUlspy6yxGwHXy0MqStE8xgALx+MWOOhv4i4T99s2nSpcFiipBGuT7Pe4eftTLhPA2LxKPeRMhRcqrdBQ3G3hZGgj7xgT7xZw3/AE9axbuXsdeS1atpIFoh3Zz6iAZ0AEkzyrpIpKD6TlZa1moK4UQWGY+RAWc9Rux9WOlGUuEocxym7/NvH8FoaJbHcjl3pf4XbkC2dJAuXOyjZZ70Xwd7M2cDNLRbX/1LnIn/ANtP8UMiBneIwSliS6W5+4Tqo5A+0VlWgVH/ANl7xk5rg2Zp8xH/AJSPatViVU9uNKHjzHRlSYAGdv8AE+1N5ryvx9iMxuHq0ewP+vfXnTmU7AQqc3FLG4k3GLKdBt6DX3ImR1UnpVPOAdtCIKjpzA7qdR2rWYrqPb99QfzPWosRpBGgOqnoRt8tvQilW+KbU7Tm4cpiecqeUnZv7WGh71AhP2BpBLLPLqvpyqd4YAxA2j8Lc0P9JO3Q11w2z8W6LesHzZhuFX7U9wNPlWhSizxNbk0Ic8D8It3mL3T/AC7ZAC7m5MzbI/Cu5p/s2brrbRFCohIM7BQNI6mBERzmqPhK7hbKHIjKVJOY+ZidZM9YEaRTEuOzqytNsnRTAzBepnTMd4pTWmRrLbeB/wCmMBWQUF3gzhDs2M/mOQFXKiqPKwMzJ11ECRvrXfiDH3HVgttWQnKqkgTuu8bkchtzonhrIOUWVEKsBjpAmTJHNiJPrQ/jPE1skspHxIylRsdY0HIQCfbvWCSuMi9j38zQOrIDW/jxF/gmGd7gcW4+E2U5zmVDsYgwSACBEwateJ7jpdUsCxQ5lYyBOkQuwiB1pT8LeILiYq4imVuszODtIl8++/LvNM3HcW2JIIcQkB58qrpO8xG5ntQnGhdKXexh9X9QayJV8PcWvfBuhZ/lCVZhmEFpLN3lm9loNwe7cx934OUhS5uPc3CJnzHcRJMwP8CrOK4gy2WsKAqXCSSNCwIA36dPU9al8K3BbtlEWWuOqtGgyBZGZhvMt8jU9YMo1jiqm1w6dTLyTzGu/hMNbYBJ0aG2YgQRI5cj8hpFU+P8cFstawwAiIcNJKnQwTPPpy1qo5IOsTzjYmSJilt7wztrrP7FTEQ7MAAPpzOZkzOuSjvR795o3S1xg3mMwefcT2P+aC8WJW4c0giDrz1ooTkvC4BmDAK4mCANA4HMRAPSB1NQ+NntvZVkHnDhT/aQTr/g9zTKYgtCEHVlm37wVg8Oly4gfUM4zctCwnXlpTPxziCAG1bHlSAAOekbcomPahXh3gdwoMRclLQO8b8tCT1nly+Tylqxai8uQuikAysyROwJMkHU9CaHmWzvwN40mRQaHJifw/CfDT+YCDMgaE69aJ3CUUCRmcAQQJUag7iQSenQ0Pxt3MZYEy07/dnbpHKpcFcZnliAGIQSNFEkbDlrQkA16nms6uUKpOuNoUe0DqHSPefrVS/bP3h2BE/mKxrhAXOxJUZQT0B2n3Nb8x8w+zMD+7c/Smiw57GDx4yqgdxMFn+UWtsc+wOgIhpO2u/Op8DxK4US2rBAoIYjRmJJnM2+2kVXvYnWEMnnGx7mtYRG1yZWJBBVhtPMa70DJRFCHTY20I8Rvm4pVmAVkjXsNJjoQNaApjbuCuLqhDDMrKSYI0gTEEBvrRPEdInb22+lAfEeJDXESB5Fj3P+gK3iWiFrapH3Fx38PeOHdghO2pLSR0gdOulCP+pmKvXTbuMQbNvXIsz8Q6BmJ3BmB0g9aDWb2QDKdQM0Ac4n9NKN8Cx+dSCBOxB1zAjkaOuRkPO0XyYkcGhRilZuEAqSdTmusOZ5IKP4YlYQELddfMeVizz/APIj6mon4EbatdtkOtv7FuZeTzj7zToKjw9nIGFzNrD3m1lua2U9aOaIsTmshVqMK4exiXUNZ8toiEEfdGgPvE+9bqC5jLhPmxVuwf8A0vwDkvyisrNTNT3lq8a8avqfUj3nb99ue/r6uxMxC/nXlX/UbD5WPKGI/T2/fYny8iETgxUuZSoO079j1/fL+2qN14DIevPkevodjU5uT5ef5np69Ou3Oh+LY/vX96fSgE2ZpRQlfEXd/ke/+x+lFvDOCuXLkzsBMnXX/MDWgouAMCdfTry1pr8HWbl24iWwxMh2IH2V3LEnQabT9ax1BIQheTDYFBbUe09Bs8K+AyOHVSqy5Y6Kekwdww771d4gud1dGTKwE5TP5akfpQHxLjhbt/w6B/iMSXnXfUZj1jX3qPwm7DMhXQxrJmSToO0T9K5WQrp0AVfz7x8YmK6yf8iE8bxF7YIJGQToHidJ5azypT49xRrkZUVRsOZGp25zrVXxhh3RmSTB1X99KHcK4mWuANygRzJAjfpt8q1jR9G5sDt4hAEUynwy41vFurCCylTO4ggx7x+VPPhi+GS6jQCeomZBERz2270r4K/bfEx/DpdvO8Au7ALqFCqqsASSdSTt2k16Nwm1YQD4nwlIENkGRMwIkA/aI8wGuunydAtlOwNd5y+oQ6yREO7bewFtW0e7lXzsFJGYb+kbRPLvV7haElXyOs+WCCIPLcevuaLeMvEFlrltLToQNXfO2VRtlAE+ux5Vb8L423cJZrinKvkVtsxP1gaxtr60tmxEtp237xzDnPp3zNY6wVs3G0m3IeIywFDHXmR++/n/ABa/lMqdzvT/AMU4ogS7ZVVZoJYyYMQDrEzA1EfdNId7CZw0DLzg6jfl35UTGEWqO45EVfExYsymj3H7SPD4kMATGhmZgz89uXpVjMCIdSymJGokaaTy9aq2sMBofWpGXpRGz70BLXoe9wkOI3IgkFBICtBVRyC6aadPUySa1g3N24qgSXbZNOXIdaoWrJIC1O2FCgTIOhDGl3ZW55j6KRxD+JsWLVkqUZrjSASYyMMsyvTvJ+tDbSZlYJOkVzjLxcKs5zGp5chEnejbYI2bEDQko5JB1LLOhG8bfPvWWfuB8v8Ac0u3feKuJtgDVyZ1A007mBVkLNtlt5SoIlpIJ8o1A5UNxFy58a4Uh0yyyzyA2Gh8wM6frVmyhRQRpIkg6QdZkdtopo4moEQHqpqIJknDbcNrzEHnHca1cwyRcmIUjeOnLSh1m5/MJH7jQ/s1etXlJyE+bTTpy1PWgaSHuGJtJGznOSV0ALE7zryoFj8CFu5sxYMZM7g+3emFrgYOF0MHUHaBM1RtP8RT5QbmxnUNEyQeR30pgHSOYLmUr0CIP2hGh3MgGfrUvw/htCmM31ra4BrijICeRB2B5U3eHOABFDXYZiNjrHPfrWwhfYQb5Qm5ixhPEYtExq0RpoB1JP6VF/8AVHvXDcc6j7AO1tfxkc26CiHjXgdi1be6qsLjOMirpbRRuzADaATJ5kd5WOGt37z36kc26CmgmhanOyOXNmG1uqugFsf36uZ1lj1O/vWqmtqQBLqvaASPU8z17zWVm4KfQBGlIf8A1HwGdSw+8J9xof2PrtTbdv5xptHzqpxHCi5aKRqPMo69R7ij5VJXaEQ0d54PaGmokjSOo6SPmD8uVQ4lc32dj8+uvcb/AF2JgzxzhRt32UGFbVdOZOo19e/6VbtkKDGpO56/7H6+66i95s7bTrgPBcPcKuxa4VBz2pyy3YgiB2J1603+Hl/hL2W2oSzcXUEZm3iHc+aBqRBpL4RjhauFSAM+zRrPr/j9aeMPw/EX7ObImohSTlJWdwOhjmamdWZCF5m8DAN7uDIwuHe49wXQcxnzNJJ2AE6gfpUuHvBREmZ5/p6fnSrj7ihggXIyyrAmTmBM8quW8UqJmZgNYjkRyYGd+oMcvbg5enYnmdlWFfKGPEyrethhEqNBpJGuy715zxW0UaRoRpXpXCb6NbuNALBZUAeZxrOU9tJgbEnlSnxfD27jSG+HvIbXvp69z8qY6Z2Rvd3gMjJei94L8Lki6r6EzMTrGoPsBJppxl1rgyktBOus9t/SgPBeHtmm2lwrORm8u7aABRJ19aK+McT/AAyiyoYXSolsy+QQNIHmkjmcs7iRTGXE2R7WYTKqiiN5awfD7eUrlEEGCN55H/nrVbFZrTET9nUcwemg6/5qt4U4pncKx30Incfsb0c48GOiWz9hYYDU6Ddu36mldLKxD9owpUihxLHgbBj+Gu3XZ8zkgDTULqdxzJj2oHxp4JCggA6KDoDpIjl/umLgCfBshNDrLmeZ5HpvsfWgXELwlySI15HUTv8AvXaprDZLP0lKntNQLaeeWjajTX1ojhsKQJBGo7TzEQf3tVa+QGDCMxEHlp1H0oz4ag5nZguTzSQTG/b68tKLkBuhxKVtt5PgsClkhrvQ+XQxvq0kAgGCVE/nUnGLDNZdgsKCIKxqd9ZHdeg33qhxVDcD3PuawARMAxoD+dTXOJG9btW7ZyqWy5QY0B3JPRZMnpWBvVef5csitzOuEYcBQxUQBMFtzvOkeWeh5V3xPEs5AdmyAEKQJygDNl8x27761q3bRLhBZSmQlGBDCd9DOpjMNd/UgVUW4QdNR9oen6UxhxqwOod5z+qysjAqdqmsDZt2yWmSZ5bnfb0EVUtAvmzGSZnlvyHpUeCWLtxhpbVoAJ0ByKTHaWHckmuf4oLJgn150+pE5xvVBeCRldgjEiCx5gwZ0jetMSz5mOQQN949KvX8SZ8ggsZaTB2A0n0j1FUuJ4cs4NsSzQCB+LueXegFbYkzqo5CAQitwaCcimCD94xBmatYVLf8QTqyHUBSYBgamOjA1vEcFRbSZ3dgNJQroYGYRHWN+RFXuF3cNbBCAqZk5oMnpMSTz9qWyZK3AP22h1Qna4cw7JcEmA6jX0/SrNrHW0XzsRHQEntoKB3+JMYhBB1EdOpIrFxRH/c80nymdtN9pFFTq2aqFQLdIByZbuYRbk53JzaEQNugnlS1xPwm+HVrqXFZA2ggh1BMCBszaxMiKZ7NtfJdRpRp36jT8/yq/dw5xCPZiQwhhqIHryp9fcs5zijPOFK/0/8Axzf/ALTrWUz2/BzgQ2KCkaFVUkCNIB51qq0GDqPfAMXmthSdVMe0aUUYkazqNRXn/DccyMtxdgcrrtEfuRT/AGWDqG3BE/OiY2sUeRGMqUbHBi3414MLyZ05mY5B9jPY/vSvN8QrCQwhgY9f917ZcgyDqDoR1/fWkvxZ4eJbOmuw23G2p5ETvr6UBxob5GV8Q+cT/CeCt3MSouWjdTpEqGkQz/0jXQ9t+fqDXgpCqNIgADaOgHSvOeHXThbvxAxiCrDmR3E7gx+93a3ihbQ3X+0dFB6kHbqK2WCrZ7TKqSaEjveGcPi2Z/OrA+Z1gCdZEGZbafWqx8EWbRDJca4VMk3GGRADyRF8x7Ex2olwviQVMhEE8+7HX3n8+1HMRh7JQwubNpozROmsA6RvNIY8i5UJWrjjakIBuol8Ss2w3k1EQWy5RAP3QOv60meIrHQxr6dNKdONfCUspd1ZRmAUdRMHN/mkziHC2unOruyz97mfy+lIYb9TU5qTJgdnVxwIZ8Fy6Klu2S+acw1kxHeIoi/gUQDedFJaXYFrlx2MbknfuZOoqj4N4mLeH+GFAcMVuGTLakjbXLECOx60zW8bG2VeRkEt+9Os03k6pEJXeEGBidXmVsP4ewdpyV8rLALMskyJ0Jk96E+JseTmtWwVXXWdW5yYgL6AUyW7ucgMPKdNdCTtIjagHiO1lumUme4+tKNlBYMBzGMQ3oxaXFXEJykwdGWZExE/uKG3sS7NB0jr1M6gf80Xuq32joB33PagviVSqKw3GhPUH9Kaw6Xaqm8lqt3CPD8BncAtMwSegpix9rNcCWvIkBWGxKZVGo58zP8AVQDwrjgLDFbgDEqjLs5QkyEJ5mAJ5CT2LlwrBwudt2UkCD65QZ/zpV5EYGjvcErg7zq9hC1oJbSShyxHLWZY7STMnnSLxTD3LF7MiOsbaHUEagkaGnpH80liMwzSpIMGNx07VM9/4VkuDKgmAGPmYkSDHYajnQcJOokcCabip59irrBSGBVjDAEFTGugEDQ6+4oquJQWQyldSAdtG/zQ3xUzMFuakqSH7AnQx6z86G8IK3GOdogSsDnPPtE/Sm8TezVUV6nBrar3jFintKgtu4UkliBJJHItGw31PSozYFwfy0MTp39Jq1jeEW1BLIXeMzuSYk8gOgGlWPB+NVgJGokDnHrA3qY86ufbsPMC3SaF1cxQxmJuBpuLqhIgbL90j2rXCgwJCmJOpM6ROv1+tMfibhwzOynMSSWU/PT9KD8JtKqPmBBI8paQJkSNuhn270TKAoqMYSWNmFMPjtGRhlkbgaydwTuRBP0qq8sJkGPQafqNDW7mKRUygakct/nVO47RJMgEALyk++9Lb7UYyAN4RtPcyS0NA+yZ0/XSqqM1xoG7EAdOg06VHnuXIyCNMukka8zR3w1waP5lx4K7AaabZjOtVaJuZG1HiNGEwgX4agyttQBO5br9aKXb+VZHPc8zQg8QtLHmOaJM7floe01Bj+InOoUArEljsB2HMmujizpkHt7Tk5sTofd3keO4qwdhl2PStVtuKD1rVH/GBkWD4eUvhToH0PRhBjX8QP0mnDgWZAbLTmtmPUHUVZv8OUsWiOY7VUy/Duh5mDr3FBViGsxtgGWhD9rC/iPyqLHYQEaCRzB59/WriOCAwOhEz2qrfxDn/trPc7UyyhhRigJBiRx/gCkm4onSPpsR/mljEYq9ltC4cxtOUybESs2ySDBBykTA2716ucK2XUAN22I6EUu8X4Il2CB5hMCY91PP0+lJZ8bBCvIMaxOuoMeYv4W7nJEzlnaf3P6UbXibWbbsIB0EtBMnkO9AbWCuWnysZBbUxGm4kbiCI6GarcVx9vW20kgiTyB56Tvr/wAVwkxumSga2M6Z05AL3Ej4jc+IxIkux11678utEuCqMPaa7c8wOi25iT95m7AfX0qPhGRmHlhSYzRMDQbde3el/wAccWVFdUkEnKoJB05z39O9Ewo5cKB9/wBZpytEHgSK6r3Lj37Ilp8yINcs7qOZ6jcxRnAX2gNcBWdYMae3WKqeA+BNcsLcDlXMsukg9QQSNNdT1FNeP4E7LHx8q/adgAFB6AGSdaYzhGUrXG1/SLIxV7vY9pDhMdmiNeUk/Q/6qTi9j4iiCDyA2OpA82vKfrQl0e2YTNcC6Z8sDTmCNPrzq3gOKggZoWYUZlOYzroCPf3Fc5RzfHyjZXgrBGKT6jTp7+x6c6X+NYIOHybtz69J9/8ANNHG7YzEKdJI82mu5knahTrH2nX2M6dew0pnA5Q2JpwrLvF3/p5g898k6ZOu2baD7wPevUbTZg4gywDaHmCSCGEg8tvxQJpE8O4V/jXjbkKWDSDBmCT66jb/AHTDw7izW0OgYiMkHZgJ1HTXXlOnWuhkYepqPBETRCFociS4uy6/bWDOafn0MdflVHFuFUNMiTKyfZunM/KiZf4gAd5LLqCIyiNI1nnv70E4ymW2c0iTpI3661zFrXpEaB23gPiuILW/KfLOVh21In5VnhjAF7g1hD9oj227wd/zih2MuHYAx+dM/hSFVWI118p0gV0ch9PFQiynW9w9jTlGUHURrIOmsj20qvwhPh28wPWNOU1BxN2YZlUBZInlIExv3onhsCWsqOaif8xQuix2SaldUQqgDvMvXVgkQ907IdDHXbbSlriFm/fueS2pjQico9ydSfanDhvDEQG658xEsTsBG3YUuW8VcFwi2YEyCwkwTIPyp/MwQAsNopiGo+07yLDeFbgXNeuW7e501joJMUP4Z4ZuvdLO4+EpJWZDN0OUe/y70xOH8r3DLEhVDGB79ABrQzjHGYvFEcwNmk6nfQRt/s0l6zPYxiv1jnp6d2aEMXfSy2W2stz0mZG47jr3qlhcbF3MSWJUr6ayT9PyoZiMdE7k6azJ+vt1qicZJGgO3IRFUOnpaPMIMn2l/HYggSGEHlr1pj4JirYt2y4zHKN9R8tqTLOa7cyW1Znb7KqOXPsoHX0FOXCOEC0Fa6c7iIQfZTsx+8f33pnpwMe5ivVNr2EY7PGCQMqMRyhdPasqh/Fudq3TevJ/bEdKeY74jMeVDMZZZhsQaA8T8I4m2ZtYl2Xo4BI9wRNEuA4y9a8l4509DI9JJ+U1Ch7wocVtJ/D+KdP5Nw6ZvKegJ2pqRQBApe41hgyZ7Z7gipvDPEzcTJcP8xdDynoaKj/9TBuljUIZuoCKGY3CzPI7zyPr37/nRWo7qTRCAdjAg1FXF3wDkvLHRufqG2NL3F/CKXWZ7LanWBtPUqfzEU64+0ACHUPbPI7j0oBf4XcTz4d5XfKTqPT9g0ll6e9/9w+PMViNjeGXbIhwwBkFhqAI59O225pJxdwXLwE+QGBPSvabXGiPLet689I+n/NUeIeG8BiiXyhHOpZfKSe5Gh96FiQYyTGDn1AAwP4Z4hCZFMpbEsAYzQfLbJ/DMk/LnV/F8d+KCrGI1JUA9tB771Uv+DL1pX/h3DBtQG9vvLvt096XHwmKsyLlh5nVgudfWVmPeKSPTnUT28GOJlxn6xqTHEoIJgab/dAXUd4ND/EPEj/DHykFSsE9ZUyO4/Wh+F4mMoAMgHWDvpqDBGnLSsx+KFy3kGx5nr0+UchQVwgMCR3hiRW0oPxh7i6kknfv6+9VsS5Vd5GhA5fSpcbwl7WGt4hYZXgEiZUn/E6VvhXDHvJmn+0RM6xy510l6ejsNom/UgjneXPC/EM1o2phmbNOxzax5jsOv7BNYRkQHOCLgOqnTSNB6akxGunWgPCPDOIa86KhXIdyCo35E0Q4viWsscPcKsUjbYFgDvvtA/4FC6np25HH6TWDOCKPMvX8QqZchmR5uoOojX8/Wg3HcW1zKv4JkCTAOs9gBpyqsMRGx9NqYfCXDBdstcBli5Rp100/waH0+A6rrib6jKAko8J4ZntzzGvSifDLAuXFUpC7MdzAGntPOr3GeErbtA2yAFOqzuI2HzmK5wGKt2k+IQS8THtsK6ugXRnL1nkQnhOAWmJDA6arqdOpiY6UTv8AD0KkMQE00MQY11qh4Xx73LJuuAHc+VR91YkfnNWrdsKi52a5H3jr20jb9zW0xoo9oqZZ2J9xuCeJ8RDh7VsjONWHYzHzigmLxR+IvJssaTy1A7jemPFZSYEIv1ND+I4Z2QBVBKmUKiSfbeaV6nGXQ3GMDhWEC+JcS3wVJiY1j1gUlsjMSw50/cQ4HcufbZbYiIZpJMzAVZNQYHw1hrY/mM91pkyTbQdgAST7mk+lBVareOZnU1vtFXBYO45hVZ2bQBdTP+B3pg4V4QIKviLgUA62k8zEf1ODC/vWmBcYqjLbRVXooyj9/Oq128zHU+wptMLtudonk6lRsJYtPbtLktKEXoup/wDJ9zU2Aw7XDOyj96VzgMBOr7dKMIYEDanMeFVij5WbmWLaKAAANO1ZUWaso0zHEmhnEMHOulEitaOulYM0DUB4e4UkH7B3HTuKp47Dm24uWzBGvqOh7Gjd/DjpVG7bjynY/Z7f0/pS+Re4jGNr2MIcH4it1JGhGjLzU9PTvRKkf4jWbnxE9GXkw6f7ppwGMW4odTKn5g8we9bx5NQo8weTHp3HEs3kB3oTjsAwOe2YPMHY0ZBrTrRoKK91kfy3bYB76j2b9mh+J4Ku9tiO1NeNwauCGUEHegeL4dctf9tsy/haT7BtxWGQHmSCAt63zPqK7TirfeUH1FStxEAxcBtn+rY+jbGunvoeYNCOIS9TCVsSMPdEXLKt3ygke41FDrnh3BEyqlD2Y/k00RZbe8Ctm+o50M4B5hBnacnh1prJst57Z1gx67jvrXfC+HW7OltQB1JlvSY/Kq74pP3FVruNUbNH77VYDLwZXqKeRCPFHxBGW0FA/FmXN7dP3tSfifCWJuSWmZmZDMfrRS5xdhsR9f1qI8auf0/M1li55oy1yqvEH8B8J3/iEXlKoBIOhLGdtCdIn6U88K4bbskm2pQEaqJyk9Y5HvSmeN3O3z/1XLcau9RUXUvAEt8qtyTGXiPDsz5w0CIKxpM7jaDvPt0oXj+Dvk/ltbD8i7wI16SaFni1w/eHyrRxl07ufatf1D4mdaDzGC1ZyQWuCQsEIGaeoBIAqX/6gltQoBMfiKp+U0s5yd2Y+9bAFWMbnlpXqp2EL3eJrMgIPRS5+bafSobvEHb8Z9Wyj/4rpVJRUgrQ6cd9/rKOZu206zt2X+0f5rMvXX11rtEJ2FWLWHG51/KjLjC8CCLM3JkFq0zbbdeVEcJhlXXc9T/itoK7WiVJUmVqlVqgWu1NSak81lRzWVJI7u55Cos/WpTXJSsGXOHSao4i3yO1EIri4tZIlgxcx9s89xv+vvVPh2NNi4Tvbb7Q/wD6HcfUe1H8ZZkbaj6jmKW8cmU9QaUdSjWI7jYZFoxys3tAymVIkRsQedW7bgikzgHEfhn4bn+Wx8pP3WPL0P0PrTKHg0zjyBhcWyYypqXoqO4lZbuzUk0WCgzH8OS4pBUUk8d8MXbcthrhQj7h1Q9gPu+1ejlagu2QaqpJ4fe41etsbd1IYb8vf/iuk43PM/OK9I8VeGxftlR5W3B78vavKOKcKuWXKXEKnl0PcHnWSglVCLcQJ51G14nnQy2kVYtiq9OVUsG5WfErLad6sJhgeYqvTlaZXz1sE1ft4EdvnVhMCvarGOTSYNQVYtrRFMKg/wCKlVFGy/WthZVSilupktdquBegA9K6Fs1upKldbdSJbFTLaqVbVXUupGi1MgrtLVTLaqpqQqtShakFuuxbqSSNVrsCpAldBKkkjy1upMlZUkjm1aNZWVmXNio7m9ZWVRklR96XeM7t/cfzFZWUDN8MYwfFAhp24YZtWp18i/lWVlDwcwufgS3h96spWVlNiJmdtXHOsrKuVIrm1LHjK0pw7SoOnMA86ysqSTys1KlZWVqUZYtVatVlZUklq3VhKysqSSRalFZWVqSSpUi1lZWpJKK7FZWVJiSpUq1lZWJc6FbFZWVJqdiuxWVlVJMrKysqST//2Q=='),
       ('Vegetable Stir Fry','https://natashaskitchen.com/wp-content/uploads/2020/08/Vegetable-Stir-Fry-2.jpg');

-- Inserting data into the ingredients table
INSERT INTO [ingredients] ([name], [price], [calories])
VALUES ('Pasta', 2, 200),
       ('Ground Beef', 5, 300),
       ('Tomato Sauce', 3, 100),
       ('Chicken Breast', 7, 250),
       ('Curry Powder', 1, 50),
       ('Mixed Vegetables', 4, 150);

-- Inserting data into the recipes_ingredients table
INSERT INTO [recipes_ingredients] ([recipeId], [ingredientId], [amount])
VALUES (1, 1, 200), -- Spaghetti Bolognese: Pasta (200g)
       (1, 2, 300), -- Spaghetti Bolognese: Ground Beef (300g)
       (1, 3, 150), -- Spaghetti Bolognese: Tomato Sauce (150g)
       (2, 4, 250), -- Chicken Curry: Chicken Breast (250g)
       (2, 5, 50),  -- Chicken Curry: Curry Powder (50g)
       (3, 6, 200); -- Vegetable Stir Fry: Mixed Vegetables (200g)

-- Inserting data into the meals table
INSERT INTO [meals] (createdBy, [userId], [message])
VALUES ('2024-03-23', 1, 'Lunch with colleagues'),
       ('2024-03-24', 2, 'Dinner with family');

-- Inserting data into the meals_recipes table
INSERT INTO [meals_recipes] ([mealId], [recipeId])
VALUES (1, 1), -- Meal 1 (Lunch with colleagues): Spaghetti Bolognese
       (2, 2); -- Meal 2 (Dinner with family): Chicken Curry
